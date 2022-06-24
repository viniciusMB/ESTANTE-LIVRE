import { diskStorage } from 'multer';
import { v4 as uuidv4 } from 'uuid';
import { parse } from 'path';

export const storage = {
  storage: diskStorage({
    destination: '../../public',
    filename: (req, file, cb) => {
      const filename: string =
        parse(file.originalname).name.replace(/\s/g, '') + uuidv4();
      const extension: string = parse(file.originalname).ext;

      cb(null, `${filename}${extension}`);
    },
  }),
};
