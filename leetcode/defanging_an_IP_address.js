//regex version
// var defangIPaddr = function(address) {
//     return address.replace(/\./g,'[.]')
// };

const defangIPaddr = address => {
    return address.split('.').join('[.]')
};
