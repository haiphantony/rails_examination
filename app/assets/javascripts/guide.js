$(document).ready(() => {
    const $btnReview = $('#btn-send-review');
    const $starReview = $('#star-review');
    const $contentReview = $('#comment-review');
    const $starError = $('#star-error');
    const $commentError = $('#comment-error');
    const $guideReview = $('#guide-review');
    const $listReview = $('#list-review');
    $btnReview.on('click', () => {
        var score = $starReview.find('.checked').length;
        var comment = $contentReview.val();
        var guide = $guideReview.val();
        var callAjax = true;
        $starError.html('');
        $commentError.html('');
        if(!score) {
            callAjax = false;
            $starError.html('Please select score');
        }
        if(!comment) {
            callAjax = false;
            $commentError.html('Please input comment');
        }
        if(callAjax) {
            $.ajax({
                url: AjaxPath.create_review_path,
                dataType: 'json',
                data: {
                    score: score,
                    comment: comment,
                    guide_id: guide
                },
                method: 'POST',
                success: function(response, status, xhr) {
                    if(status == 'success') {
                        create_review(response);
                        alert('Comment success');
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.log('ERRORS: ' + textStatus);
                }
            });
        }
    });

    $starReview.find('span').on('click', (e) => {
        var target = $(e.target);
        if(target.hasClass('checked')){
            target.removeClass('checked');
        }
        else{
            target.addClass('checked');
        }
    });

    $(document).on('click','.btn-remove', (e) =>{
        var target = $(e.target);
        var id = target.data('id');
        var isDelete = confirm('Do you want delete this review?');
        if(isDelete) {
            $.ajax({
                url: AjaxPath.destroy_review_path(id),
                dataType: 'json',
                method: 'DELETE',
                success: function(response, status, xhr) {
                    if(status == 'success') {
                        target.parent().remove();
                        alert('Delete success');
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.log('ERRORS: ' + textStatus);
                }
            });
        }
    });

    create_review = (data)=>{
        var li = '<li>';
        var score = data.score;
        for(var i = 1; i <= 5; i++) {
            let check = (i <= score)?'checked': '';
            li += '<span class="fa fa-star ' + check + '"></span>';
        }
        li += '<p>' + data.comment + '</p>';
        li += '<button class="btn btn-remove" data-id="' + data.id + '" > Remove </button>';
        li += '</li>';

        $listReview.append(li);
    };

});

