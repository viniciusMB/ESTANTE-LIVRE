import { diskStorage } from 'multer';
import { v4 as uuidv4 } from 'uuid';
import path from 'path';

export const storage = {
  storage: diskStorage({
    destination: '../book-images',
    filename: (req, file, cb) => {
      const filename: string =
        path.parse(file.originalname).name.replace(/\s/g, '') + uuidv4();
      const extension: string = path.parse(file.originalname).ext;

      cb(null, `${filename}${extension}`);
    },
  }),
};
