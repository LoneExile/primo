
FROM node:18.16.0

WORKDIR /app

COPY package*.json ./
RUN npm i

COPY . .

ENV PUBLIC_SUPABASE_URL=
ENV PUBLIC_SUPABASE_PUBLIC_KEY=
ENV PRIVATE_SUPABASE_PRIVATE_KEY=

RUN npm run build

ENV HOST=0.0.0.0
ENV PORT=4173

EXPOSE 4173

CMD ["npm","run", "preview","--", "--host", "0.0.0.0"]
