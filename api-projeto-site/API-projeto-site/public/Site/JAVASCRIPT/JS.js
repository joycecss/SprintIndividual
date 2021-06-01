
function iniciotempo(duracao){
    var tempo = duracao, dia, hora, minutos,segundos;

        var minutos = 20;
        var hora = 3;
        var dia = 0;

    setInterval(function(){
        dia = parseInt(dia);
        hora = parseInt(hora);
        minutos = parseInt(minutos);
        segundos = parseInt(tempo % 60, 10);
        if(segundos == 0 && minutos > 0){
            minutos = minutos - 1;
        }
        if(minutos == 0 && segundos == 0 && hora > 0){
            hora = hora - 1;
            if (minutos == 0 && hora > 0) {
                minutos = 59;
            }
        }
        if(minutos == 0 && segundos == 0 && hora == 0 && dia > 0){
            dia = dia - 1;
        }
        if(dia == 0 && minutos == 0 && segundos == 0 && hora == 0){
            dia = 0;
            hora = 0;
            minutos = 0;
            segundos = 0;
        }

        dia = dia < 10 ? span_dia.innerHTML = `${"0" + dia}` :  span_dia.innerHTML = `${dia}`;
        hora = hora < 10 ? span_hora.innerHTML = `${"0" + hora}` :  span_hora.innerHTML = `${hora}`;
        minutos = minutos < 10 ? span_minuto.innerHTML = `${"0" + minutos}` :  span_minuto.innerHTML = `${minutos}`;
        segundos = segundos < 10 ? span_seg.innerHTML = `${"0" + segundos}` :  span_seg.innerHTML = `${segundos}`;

        if(--tempo < 0){
            tempo = duracao;
        }

    },1000);
}
window.onload = function(){
    var duracao = 60 * 1;
    iniciotempo(duracao);
}
