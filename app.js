


(function () {
    // const boutonOuvrir = document.querySelector('#ouvrir-modal');
    // const boutonFermer = document.querySelector('#fermer-modal');
    // const modal = document.querySelector('#mon-modal');
    // const diapositives = document.querySelectorAll('.carrousel-slide');
    // const boutonSuivant = document.querySelector('#flecheDroite');
    // const boutonPrecedent = document.querySelector('#flecheGauche');
    // console.log(diapositives);
    // let index = 0;

    // function afficherDiapositive(index) {
    //     diapositives.forEach(diapositive => {
    //         diapositive.classList.remove('active');
    //     });
    //     diapositives[index].classList.add('active');
    // }

    // function diapositiveSuivante(index) {
    //     index++;
    //     if (index > diapositives.length - 1) {
    //         index = 0;
    //     }
    //     afficherDiapositive(index);
    // }

    // function diapositivePrecedente(index) {
    //     index--;
    //     if (index < 0) {
    //         index = diapositives.length - 1;
    //     }
    //     afficherDiapositive(index);
    // }

    // boutonOuvrir.addEventListener('click', function () {
    //     modal.style.display = 'block';
    // });

    // boutonFermer.addEventListener('click', function () {
    //     modal.style.display = 'none';
    // });


    [...document.querySelectorAll(".control")].forEach(button => {
        button.addEventListener("click", function () {
            document.querySelector(".active-btn").classList.remove("active-btn");
            this.classList.add("active-btn");
            document.querySelector(".active").classList.remove("active");
            document.getElementById(button.dataset.id).classList.add("active");
        })
    });
    document.querySelector(".theme-btn").addEventListener("click", () => {
        document.body.classList.toggle("light-mode");
    })

    // boutonSuivant.addEventListener('click', diapositiveSuivante);
    // boutonPrecedent.addEventListener('click', diapositivePrecedente);

    //setInterval(diapositiveSuivante, 3000);

})();

    // function diapositivePrecedente() {
    //     index--;
    //     if (index < 0) {
    //         index = diapositives.length - 1;
    //     }
    //     afficherDiapositive();
    // }




