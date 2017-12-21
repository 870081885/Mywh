jQuery(function () {
    var $ = jQuery;
    if (!window.webuploader) {
        console.log("请配置好window.webuploader");
        $('#dndArea p').html('请配置好window.webuploader');
        return false;
    }
    if (!window.webuploader.config || !window.webuploader.config.wrapId) {
        console.log("请配置好window.webuploader.config.wrapId");
        $('#dndArea p').html('请配置好window.webuploader.config.wrapId');
        return false;
    }
    if (!window.webuploader.uploadUrl) {
        console.log("请配置好window.webuploader.uploadUrl");
        $('#dndArea p').html('请配置好window.webuploader.uploadUrl');
        return false;
    }
    if (!window.webuploader.updateUrl) {
        console.log("请配置好window.webuploader.updateUrl");
        $('#dndArea p').html('请配置好window.webuploader.updateUrl');
        return false;
    }
    if (!window.webuploader.removeUrl) {
        console.log("请配置好window.webuploader.removeUrl");
        $('#dndArea p').html('请配置好window.webuploader.removeUrl');
        return false;
    }
    var disX = 0;
    var disY = 0;
    var minZindex = 1;
    var origin;
    var is_moveing = false;
    var $wrap = $('#' + window.webuploader.config.wrapId);
    var $queue = $('<ul class="filelist"></ul>').appendTo($wrap.find('.queueList'));
    //mywh
    $queue.width($queue.width());

    var $statusBar = $wrap.find('.statusBar');
    var $info = $statusBar.find('.info');
    var $upload = $wrap.find('.uploadBtn');
    var $placeHolder = $wrap.find('.placeholder');
    var $progress = $statusBar.find('.progress').hide();
    var fileCount = 0;
    var fileSize = 0;
    var state = 'pedding';
    var percentages = {};
    var supportTransition = (function () {
        var s = document.createElement('p').style,
            r = 'transition' in s ||
                'WebkitTransition' in s ||
                'MozTransition' in s ||
                'msTransition' in s ||
                'OTransition' in s;
        s = null;
        return r;
    })();
    // 优化retina, 在retina下这个值是2
    var ratio = window.devicePixelRatio || 1;
    // 缩略图大小
    var thumbnailWidth = window.webuploader.config.thumbWidth || 110;
    thumbnailWidth *= ratio;
    var thumbnailHeight = window.webuploader.config.thumbHeight || 110;
    thumbnailHeight *= ratio;

    var uploader = WebUploader.create({
        swf: "/assets/plugins/webUploader/Uploader.swf",
        server: window.webuploader.uploadUrl,
        pick: {
            id: '#filePicker',
            label: '点击选择图片'
        },
        dnd: '.queueList',
        paste: document.body,
        accept: {
            title: 'Images',
            extensions: 'gif,jpg,jpeg,png',
            mimeTypes: 'images/*'
        },
        //resize: false,
        compress: false,//文件大小会算错 mywh
        disableGlobalDnd: true,
        chunked: true,
        fileNumLimit: 30
    });
    $("#uploader").hide();
    //mywh
    global.uploader = uploader;


    function setDragEvent() {
        $(this).on('drop', function (e) {
            console.log("过程中");
            if (origin == null) {
                return;
            }
            is_moveing = true;
            if (!is_moveing) {
                return;
            }

            var $from = $(origin).parents('li');
            var $to = $(e.target).parents('li');
            var origin_pos = $from.position();
            var target_pos = $to.position();
            var from_sort = $from.attr('data-sort');
            var to_sort = $to.attr('data-sort');

            $from.addClass('move').animate(target_pos, "fast", function () {
                $(this).removeClass('move');
            }).attr('data-sort', to_sort);

            $to.addClass('move').animate(origin_pos, 'fast', function () {
                $(this).removeClass('move');
                is_moveing = false;
            }).attr('data-sort', from_sort);
            origin = null;
        }).on('dragstart', function (e) {
            console.log("开始");
            if (is_moveing) {
                return;
            }
            $(".queueList").addClass("webuploader-dnd-over");
            e.originalEvent.dataTransfer.effectAllowd = 'move';
            origin = this;
        }).on('dragover', function (e) {
            if (e.preventDefault)
                e.preventDefault();
            e.originalEvent.dataTransfer.dropEffect = 'move';
        }).on('dragend', function (e) {
            console.log("结束");
            $(".queueList").removeClass("webuploader-dnd-over");
        });
    }

    //更新服务端附件
    function updateServerFiles() {
        var postData = {};
        $('[data-src="server"]').each(function (index, obj) {
            postData[$(obj).attr('data-key')] = $(obj).attr('data-sort');
        });
        $.ajax({
            type: 'post',
            url: window.webuploader.updateUrl,
            data: postData,
            dataType: 'json',
            success: function (data) {
                //setState('finish');
                alert('更新成功');
                $upload.removeClass('disabled');
                setState('ready');
                uploader.reset();
            }
        });
    }

    //删除服务端附件
    function removeServerFile(fileId) {
        var file = new Object();
        file.id = fileId;
        fileCount--;
        removeFile(file);
        updateStatus();

        //$.ajax({
        //    type: 'get',
        //    url: window.webuploader.removeUrl,
        //    data: { id: file.name },
        //    dataType: 'json',
        //    success: function (data) {
        //        var file=new
        //        fileCount--;
        //        removeFile(file);
        //        updateStatus();
        //    }
        //});
    }

    //初始化服务端附件
    function initServerFile() {
        if (window.webuploader.initUrl) {
            $.ajax({
                type: 'get',
                url: window.webuploader.initUrl,
                dataType: 'json',
                success: function (data) {
                    var obj = new Object();
                    if (data.flag != 1) {
                        window.layer.msg(data.msg);
                        return;
                    }
                    for (var i = 0; i < data.obj.length; i++) {
                        //obj = new WebUploader.File(data.obj[i].src);
                        //$("#dndArea").addClass("element-invisible")
                        $("#uploader").show();
                        obj.src = data.obj[i].src;
                        obj.id = "SVR_FILE_" + i;
                        obj.rotation = 0;
                        fileQueue(obj);
                    }
                }
            });
        }
    }

    //添加附件到webuploader中
    function addFile(file) {
        //mywh 间距
        var padding = 30;
        var index = $queue.find('li').length;
        //var imgLeft = index * (thumbnailWidth+10)+20;
        //var imgTop = 0 + 20;
        var imgLeft = index * (thumbnailWidth + 10) + padding;
        var imgTop = 0 + padding;
        var wrapHeight = thumbnailHeight + 20;
        var wrapWidth = $queue.width() + 20 + 10;
        if (imgLeft >= wrapWidth) {
            imgTop = parseInt(imgLeft / wrapWidth) * (thumbnailHeight + 10);
            wrapHeight = imgTop + wrapHeight;
            imgLeft = (index % (parseInt(wrapWidth / (thumbnailWidth + 10)))) * (thumbnailWidth + 10);
        }
        $queue.height(wrapHeight);
        var $li = $('<li data-key="' + file.key + '" data-src="' + file.src + '" data-sort="' + index + '" id="' + file.id + '" style="position:absolute;cursor:move;width:' + thumbnailWidth + 'px;height:' + thumbnailHeight + 'px;left:' + imgLeft + 'px;top:' + imgTop + 'px">' +
            '<p class="title">' + file.name + '</p>' +
            '<p class="imgWrap"></p>' +
            '<input class="hidImg" type="hidden" value="" />' + 
            '<input class="hidImgRemark" type="hidden" value="" />' + 
            '</li>'
        ),
            $btns = $('<div class="file-panel" style="cursor:default;">' +
                '<span class="cancel">删除</span>' +
                '<span class="edit">编辑2</span>' +
                '<span class="rotateRight">向右旋转</span>' +
                '<span class="rotateLeft">向左旋转</span></div>').appendTo($li),

            $imgRemark=$('<div class="remark" title=""></div>').appendTo($li),

            $progess = $li.find('p.progress span'),
            $wrap = $li.find('p.imgWrap'),
            $info = $('<p class="error"></p>'),

            showError = function (code) {
                switch (code) {
                    case 'exceed_size':
                        text = '文本大小超出';
                        break;
                    case 'interrupt':
                        text = '上传暂停';
                        break;
                    default:
                        text = '上传失败';
                        break;
                }
                $info.text(text).appendTo($li);
            };
        if (file.src == "client") {
            if (file.getStatus() == 'invalid') {
                showError(file.statusText);
            } else {
                $wrap.text('预览中');
                uploader.makeThumb(file, function (error, src) {
                    if (error) {
                        $wrap.text('不能预览');
                        return;
                    }
                    var img = $('<img draggable="true" src="' + src + '">');
                    img.bind('load', setDragEvent);
                    $wrap.empty().append(img);
                }, thumbnailWidth, thumbnailHeight);

                percentages[file.id] = [fileSize, 0];
                file.rotation = 0;
            };

            file.on('statuschange', function (cur, prev) {
                if (prev == 'progress') {
                    $progress.hide().width(0);
                } else if (prev == 'queued') {
                    //$li.off('mouseenter mouseleave');
                    //$btns.remove();

                    //mywh
                    $btns.find('.rotateRight').remove();
                    $btns.find('.rotateLeft').remove();
                }

                if (cur == 'error' || cur == 'invalid') {
                    showError(file.statusText);
                    percentages[file.id][1] = 1;
                } else if (cur == 'interrupt') {
                    showError('interrupt');
                } else if (cur == 'queued') {
                    percentages[file.id][1] = 0;
                } else if (cur == 'progress') {
                    $info.remove();
                    $progress.css('display', 'block');
                } else if (cur == 'complete') {
                    $li.append('<span class="success"></span>');
                }

                $li.removeClass('state-' + prev).addClass('state-' + cur);
            });
        }
        else {
            $btns.find('.rotateRight').remove();
            $btns.find('.rotateLeft').remove();
            //uploader.makeThumb(file, function (error, src) {
            //    if (error) {
            //        $wrap.text('不能预览');
            //        return;
            //    }
            //    var img = $('<img draggable="true" src="' + src + '">');
            //    img.bind('load', setDragEvent);
            //    $wrap.empty().append(img);
            //}, thumbnailWidth, thumbnailHeight);

            var img = $('<img draggable="true" src="' + file.src + '">');
            //myhw
            $li.children(".hidImg").val(file.src);
            img.bind('load', setDragEvent);       
            $wrap.empty().append(img);
            $li.append('<span class="success"></span>');
        }


        $li.on('mouseenter', function () {
            $btns.stop().animate({ height: 30 });
        });
        $li.on('mouseleave', function () {
            $btns.stop().animate({ height: 0 })
        });

        $btns.on('click', 'span', function () {
            var index = $(this).index(), deg;
            switch (index) {     
                case 0:
                    //修改删除后面所有图片的位置
                    var allImgs = {};
                    var fileId = $(this).parent().parent()[0].id;
                    var del_sort = parseInt($('#' + fileId).attr('data-sort'));
                    $queue.find('li').each(function (index, obj) {
                        if ($(obj).attr('data-sort') > del_sort) {
                            var sort = parseInt($(obj).attr('data-sort'));
                            var $prevObj = $("li[data-sort=" + (sort - 1) + "]");
                            if ($prevObj) {
                                allImgs[$(obj).attr('id')] = $prevObj.position();
                            }
                        }
                    });
                    for (var k in allImgs) {
                        var sort = parseInt($('#' + k).attr('data-sort'));
                        $('#' + k).attr('data-sort', sort - 1).css({ left: allImgs[k].left + 'px', top: allImgs[k].top + 'px' });
                    }
                    allImgs = null;
                    if (file.src == "client")
                        uploader.removeFile(fileId);
                    else {
                        removeServerFile(fileId);
                        $('#' + fileId).remove();
                    }
                    if (!fileCount) {
                        setState('pedding');
                    }
                    return;
                case 1:
                    var selectLi = $(this).parent().parent()[0].id;
                    layer.prompt({ title: '图片备注', formType: 0 }, function (val, index) {
                        $("#" + selectLi).children(".hidImgRemark").val(val);
                        $("#" + selectLi).find(".remark").html(val);
                        $("#" + selectLi).find(".remark").attr("title", val);
                        layer.close(index);
                    });
                    break;
                case 2:
                    file.rotation += 90;
                    break;
                case 3:
                    file.rotation -= 90;
                    break;
            }

            if (supportTransition) {
                deb = 'rotate(' + file.rotation + 'deg)';
                $wrap.css({
                    '-webkit-transform': deb,
                    '-mos-transform': deg,
                    '-o-transform': deg,
                    'transform': deg
                });
            } else {
            }
        });
        $li.appendTo($queue);
    }

    //删除webupload中的图片
    function removeFile(file) {
        var $li = $('#' + file.id);
        delete percentages[file.id];
        updateTotalProgress();
        $li.off().find('.file-panel').off().end().remove();
    }

    //更新webuploader中图片上传的进度
    function updateTotalProgress() {
        var loaded = 0,
            total = 0,
            spans = $progress.children(),
            percent;

        $.each(percentages, function (k, v) {
            total += v[0];
            loaded += v[0] * v[1];
        });

        percent = total ? loaded / total : 0;

        spans.eq(0).text(Math.round(percent * 100) + '%');
        spans.eq(1).css('width', Math.round(percent * 100) + '%');
        updateStatus();
    }

    //更新webuploader中的状态
    function updateStatus() {
        var text = '', stats;
        if (state == 'ready') {
            //text = '选中' + fileCount + '张图片，共' + WebUploader.formatSize(fileSize) + '.';
            text = '选中' + fileCount + '张图片.';
        } else if (state == 'confirm') {
            stats = uploader.getStats();
            if (stats.uploadFailNum) {
                text = '已成功上传' + stats.successNum + '张照片' + stats.uploadFailNum + '张照片上传失败,<a class="retry" href="#">重新上传</a>失败图片或<a class="ignore" href="#">忽略</a>';
            }
        } else {
            stats = uploader.getStats();
            //text = '共' + fileCount + '张(' + WebUploader.formatSize(fileSize) + ')，已上传' + stats.successNum + '张';
            text = '共' + fileCount + '张，已上传' + stats.successNum + '张';
            if (stats.uploadFailNum) {
                text += ',失败' + stats.uploadFailNum + '张';
            }
        }
        $info.html(text);
    }

    //设置webuploader的状态
    function setState(val) {
        debugger;
        var file, stats;
        if (val == state) {
            return;
        }
        $upload.removeClass('state-' + state);
        $upload.addClass('state-' + val);
        state = val;

        switch (state) {
            case 'pedding':
                $placeHolder.removeClass('element-invisible');
                $queue.parent().removeClass('filled');
                $queue.hide();
                $statusBar.addClass('element-invisible');
                uploader.refresh();
                break;
            case 'ready':
                $placeHolder.addClass('element-invisible');
                $('#filePicker2').removeClass('element-invisible');
                $queue.parent().addClass('filled');
                $queue.show();
                $statusBar.removeClass('element-invisible');
                uploader.refresh();
                //mywh
                $upload.text('开始上传').removeClass('disabled');;
                break;
            case 'uploading':
                $('filePicker2').addClass('element-invisible');
                $progress.show();
                $upload.text('暂停上传');
                break;
            case 'paused':
                $progress.show();
                $upload.text('继续上传');
                break;
            case 'confirm':
                $progress.hide();
                //$upload.text('开始上传').addClass('disabled');
                $upload.text('开始上传').addClass('disabled');
                stats = uploader.getStats();
                if (stats.successNum && !stats.uploadFailNum) {
                    setState('finish');
                    return;
                }
                break;
            case 'finish':
                stats = uploader.getStats();
                if (stats.successNum) {
                    alert('上传成功');
                } else {
                    state = 'done';
                    location.reload();
                }
                break;
        }
        updateStatus();
    }


    if (!WebUploader.Uploader.support()) {
        console.log('WebUploader 不支持');
        throw new Error('WebUploader does not support');
    }

    uploader.addButton({
        id: '#filePicker2',
        label: '继续添加',
    });


    uploader.on('uploadProgress', function (file, percentage) {
        var $li = $('#' + file.id),
            $percent = $li.find('.progess span');

        $percent.css("width", percentage * 100 + '%');
        updateTotalProgress();
    });

    fileQueue
    //文件加入到webuploader中的队列
    function fileQueue(file) {
        file.src = file.src || "client";

        fileCount++;
        fileSize += file.size;

        if (fileCount == 1) {
            $placeHolder.addClass('element-invisible');
            $statusBar.show();
        }

        addFile(file);
        setState('ready');
        updateTotalProgress();
    }

    uploader.on('fileQueued', fileQueue);

    uploader.on('fileDequeued', function (file) {
        fileCount--;
        fileSize -= file.size;
        if (!fileCount) {
            setState('pedding');
        }
        removeFile(file);
        updateTotalProgress();
    });

    uploader.on('uploadSuccess', function (file, response) {
        $("#" + file.id).children(".hidImg").val(response.obj);
        $('#' + file.id).find('p.state').text('已上传');
    });

    uploader.on('uploadError', function (file) {
        console.log(file.id + '上传出错');
    });

    uploader.on('uploadComplete', function (file) {
        $('#' + file.id).find('p.state').fadeOut();
    });

    uploader.on('all', function (type) {
        if (type == 'uploadFinished') {
            setState('confirm');
        } else if (type == 'startUpload') {
            setState('uploading');
        } else if (type == 'stopUpload') {
            setState('paused');
        }
    });

    uploader.on('uploadBeforeSend', function (block, data) {
        data.sort = $('#' + data.id).attr('data-sort');
    });

    $upload.on('click', function () {
        uploader.sort(function (obj1, obj2) {
            return $('#' + obj1.id).attr('data-sort') > $('#' + obj2.id) ? -1 : 1;
        });
        if ($(this).hasClass('disabled')) {
            return false;
        }
        if (state == 'ready') {
            if (uploader.getFiles().length < 1)
                updateServerFiles();
            else
                uploader.upload();
        } else if (state == 'paused') {
            uploader.upload();
        } else if (state == 'uploading') {
            uploader.stop();
        }
    });

    $info.on('click', '.retry', function () {
        uploader.retry();
    });

    $info.on('click', '.ignore', function () {
        alert('todo');
    });

    $upload.addClass('state-' + state);

    updateTotalProgress();

    initServerFile();

});

