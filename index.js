let advice;
let adviceId;

$('#dice-wrapper').on('click', function () {
    fetch('https://api.adviceslip.com/advice')
        .then(response => response.json())
        .then(data => {
            const res = JSON.stringify(data['slip']);
            const jsData = JSON.parse(res);
            $('#advice').text(`“${jsData.advice}”`);
            $('#advice-id').text(jsData.id);
        })
        .catch(error => {
            $('#advice').text('Error' + `${error}`);
            $('#advice-id').text('0');
        });
});
