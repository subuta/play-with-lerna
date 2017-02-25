import fuga from 'fuga';
import hoge from 'hoge';

// import sibling packages.
console.log(fuga + hoge + ' piyo');

export default () => {
    return fuga + hoge + 'piyo'
};