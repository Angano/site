window.addEventListener('load',function(){
    // apparition du premier block popup carousel
    var popup1 = document.getElementById('popup1');
    popup1.style.transitionProperty = 'margin-bottom, opacity';
                  
    popup1.style.marginBottom = "0rem";
    popup1.style.transitionDuration = '1s';
    popup1.style.opacity = 1;
    // apparition des block dans les images du carousel

    const mutationOptions = {
        attributes:true,
        attributeFilter:['class']
        
    }

    var popups = document.querySelectorAll('.carousel-item');

    var callback = function(mutationlist){
        
        for(var mutation of mutationlist){
            
            if(mutation.type == 'attributes'){
                
                if(mutation.target.classList.contains('active') && !(mutation.target.classList.contains('carousel-item-start'))){
                    
                    mutation.target.children[1].style.transitionProperty = 'margin-bottom, opacity';
                  
                    mutation.target.children[1].style.marginBottom = "0rem";
                    mutation.target.children[1].style.transitionDuration = '1s';
                    mutation.target.children[1].style.opacity = 1;
                    
                }else{

                    mutation.target.children[1].style.marginBottom = '-15rem';
                    mutation.target.children[1].style.transitionProperty = 'margin-bottom, opacity';
                
                    mutation.target.children[1].style.transitionDuration = '9s';
                    mutation.target.children[1].style.opacity = 0;
                    
                };
            }
        }
    }

    var mutationObserver = new MutationObserver(callback)

    

    popups.forEach(function(r){
        mutationObserver.observe(r,mutationOptions);
      
    })





    /////////////////////////////////////////////////////////////
    // Mouvement des blocks au défilement

    const ratio = .4;
    const options = {
        root: this.document.getElementById('style-content'),
        rootMargin: '0px',
        threshold: ratio
    }

    const handleIntersect = function(entries, observer) {
        entries.forEach(function(entry) {
          if (entry.intersectionRatio > .2) {
           
           entry.target.style.transitionProperty = 'margin-left';
           entry.target.style.marginLeft = '0rem';
           entry.target.style.transitionDuration = '1.5s';
           observer.unobserve(entry.target);

        }
      })}


const observer = new IntersectionObserver(handleIntersect, options);

// gestion affichage "un service en continue ..."
   const handleIntersect2 = function(entries, observer) {
        entries.forEach(function(entry) {
          if (entry.intersectionRatio > ratio) {
            entry.target.style.transitionDelay = "0s";
            entry.target.style.transitionProperty = 'margin-left,opacity';
            entry.target.style.marginLeft = '0rem';
            entry.target.style.opacity = "1";
            entry.target.style.transitionDuration = '1s';
            
            var bkAgence = document.getElementById('agence-block');
            var bkEquipe = document.getElementById('equipe');
           
            bkAgence.style.transitionDelay = "0s";
            bkAgence.style.transitionProperty = "margin-left, opacity";
            bkAgence.style.marginLeft = "0px";
            bkAgence.style.opacity = "1";
            bkAgence.style.transitionDuration = '0.8s';


            bkEquipe.style.transitionDelay = "0.4s";
            bkEquipe.style.transitionProperty = "width, opacity";
            bkEquipe.style.width = "100%";
            bkEquipe.style.opacity = "1";
            bkEquipe.style.transitionDuration = '1.2s';

            observer.unobserve(entry.target);

        }
      })}

    //   const handleIntersect3 = function(entries, observer) {
    //     entries.forEach(function(entry) {
    //       if (entry.intersectionRatio > .1) {
    //         entry.target.style.transitionDelay = "1.2s";
    //        entry.target.style.transitionProperty = 'width,opacity';
    //        entry.target.style.width = '100%';
    //        entry.target.style.opacity = "1";
    //        entry.target.style.transitionDuration = '2s';
    //        observer.unobserve(entry.target);

    //     }
    //   })}

this.document.querySelectorAll('.reveal').forEach(function(r){
    observer.observe(r);
})
//
const observer2 = new IntersectionObserver(handleIntersect2,options);
observer2.observe(this.document.getElementById('service'));

//
// const observer3 = new IntersectionObserver(handleIntersect3,options);
// observer3.observe(this.document.getElementById('equipe'));


/// gestion apparence bouton menu
function toogleMenu(){
    var asideElement = document.getElementById('menu-aside');
    var contentElement = document.getElementById('style-content');
    if(asideElement.style.width==='50%'){
        asideElement.style.width = '0%';
        contentElement.style.width = '100%';
      
        asideElement.style.transitionProperty = 'width';
        asideElement.style.transitionDuration = '1s';

        contentElement.style.transitionProperty = 'width';
        contentElement.style.transitionDuration = '1s';
        
    }else{
  
        asideElement.style.width = '50%';
        contentElement.style.width = '50%';
        asideElement.style.transitionProperty = 'width';
        asideElement.style.transitionDuration = '1s';

        contentElement.style.transitionProperty = 'width';
        contentElement.style.transitionDuration = '1s';
    }

}


document.getElementById('btn-menu').addEventListener('click', function(){
    toogleMenu();
})

document.querySelectorAll('.nav-link').forEach(function(element){
    element.addEventListener('click',function(){
        var btn = document.getElementById('btn-menu')
        var btnStyle = window.getComputedStyle(btn).getPropertyValue('display');

        
        // on vérifie si button-menu est visible
     
        if(btnStyle==='block'){
            toogleMenu();
        }
        
    })

})

})