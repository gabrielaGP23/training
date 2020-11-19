using {Base} from './commom';
using {trainingcf.user.TblUser} from './user';

namespace trainingcf.clients;

entity TblClient: Base{
    name: String(100);
    age: Integer;
    familyName: String(100);
}