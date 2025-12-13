class human{
    constructor (name, age){
        this.name = name;
        this._age  = age;
    }

    set ayu(val){
        if(val <= 0){
            console.error("age can't be -ve or zero");
        }
        else this._age = val;
    }
    get ayu(){
        return this._age;
    }

}

let hm1 = new human('panther' ,12);
// console.log(hm1.name);
hm1.ayu = 21; //setter
// console.log(hm1.age)
console.log(hm1)
console.log(hm1.ayu) //getter