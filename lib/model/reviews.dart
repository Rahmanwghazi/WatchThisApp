import 'package:flutter/material.dart';

class ReviewSeries{
  String title;
  String year;
  String genre;
  String episodes;
  String rating;
  String popularity;
  String language;
  String synopsis;
  String stars;
  String imageAsset;
  List<String>imageUrls;

  ReviewSeries({
    @required this.title,
    @required this.year,
    @required this.genre,
    @required this.episodes,
    @required this.rating,
    @required this.popularity,
    @required this.language,
    @required this.synopsis,
    @required this.stars,
    @required this.imageAsset,
    @required this.imageUrls,
  });
}

var reviewSeriesList = [
  ReviewSeries(
    title: 'Girl From Nowhere season 2',
    year: '2021',
    genre: 'Mystery, Thriller',
    episodes: '8 Episodes',
    rating: '8.0/10',
    popularity: '682',
    language: 'Thai',
    synopsis: 'A mysterious, clever girl named Nanno transfers to different schools, exposing the lies and misdeeds of the students and faculty at every turn. This time, she returned to expose the lies and hypocrisy that occurred at the high school where he attended school. Not only that, Nanno also came to deal directly with the students who had been the source of problems at his school.',
    stars: 'Chicha Amatayakul, James Teeradon, Tai Penpak Sirikul, Paricia Tancanok, Nink',
    imageAsset: 'images/GFN2.jpg',
    imageUrls: [
      'https://i.ytimg.com/vi/VjqKNRlDcpA/maxresdefault.jpg',
      'http://images.summitmedia-digital.com/cosmo/images/2021/04/19/girl-from-nowhere-season-2-1618803870.jpg',
      'https://akcdn.detik.net.id/visual/2021/04/19/serial-girl-from-nowhere-2-2_169.jpeg?w=650'
    ]
  ),
  ReviewSeries(
    title: 'I Am Not Okay with This ',
    year: '2020',
    genre: 'Sci-Fi, Comedy',
    episodes: '7 Episodes',
    rating: '7.6/10',
    popularity: '836',
    language: 'English',
    synopsis: 'Sydney is a teenage girl navigating the trials and tribulations of high school while dealing with the complexities of her family, her budding sexuality, and mysterious superpowers just beginning to awaken deep within her.',
    stars: 'Sophia Lillis, Wyatt Oleff, Sofia Bryant',
    imageAsset: 'images/IMNO.jpg',
    imageUrls: [
      'https://m.media-amazon.com/images/M/MV5BMTQyMTE1MDctMjE1Ny00ODgxLTk1ZDMtMTc3YWRlMjZkMjFlXkEyXkFqcGdeQXVyNjYyNDMwOQ@@._V1_.jpg',
      'https://cdn.images.express.co.uk/img/dynamic/20/590x/secondary/I-Am-Not-Okay-With-This-filming-Pittsburgh-2330163.jpg?r=1583163464022',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk5zNWf1EUK39i5yFtzGYzVV2Qx-y20_NhmhaWR4hjffjABsVa6Ndqs1FOYajMMK1JyaY&usqp=CAU'
    ]
  ),
  ReviewSeries(
    title: 'Money Heist Season 5',
    year: '2021',
    genre: 'Mystery, Thriller',
    episodes: '10 Episodes',
    rating: '-/10',
    popularity: '-',
    language: 'Spain',
    synopsis: 'Like every season of Money Heist, season five will catch up with the professor and the gang doing what they do best: armed robbery of the highest degree, with a smattering of political resistance thrown in',
    stars: 'Esther Acebo, Pedro Alonso, Alberto Amarilla ',
    imageAsset: 'images/MH.jpg',
    imageUrls: [
      'https://pict-a.sindonews.net/dyn/620/gensindo/content/2020/04/08/1/2428/sukses-besar-kapan-money-heist-season-5-bisa-kita-tonton-images-tra.jpg',
      'https://gambar.sgp1.digitaloceanspaces.com/wp-content/uploads/2020/08/money-heist-season-5-759.jpg',
      'https://mmc.tirto.id/image/otf/500x0/2020/03/13/money-heist_ratio-16x9.jpg'
    ]
  ),
  ReviewSeries(
    title: '13 Reason Why season 4',
    year: '2020',
    genre: 'Mystery, Thriller',
    episodes: '11 Episodes',
    rating: '7.6/10',
    popularity: '293',
    language: 'English',
    synopsis: 'Follows teenager Clay Jensen, in his quest to uncover the story behind his classmate and crush, Hannah, and her decision to end her life.',
    stars: 'Dylan Minnette, Katherine Langford, Christian Navarro ',
    imageAsset: 'images/RW.jpg',
    imageUrls: [
      'https://akcdn.detik.net.id/visual/2020/06/01/c2ac5bee-6734-4f5e-9d88-e8e72d6b7bd2_169.png?w=650',
      'https://mmc.tirto.id/image/otf/500x0/2017/04/24/13rw_102_03419rc_ratio-16x9.jpg',
      'https://images2.minutemediacdn.com/image/fetch/w_736,h_485,c_fill,g_auto,f_auto/https%3A%2F%2Ffansided.com%2Ffiles%2F2020%2F06%2F13RW_401_Unit_03262R-850x560.jpg'
    ]
  ),
  ReviewSeries(
    title: 'Shadow and Bone',
    year: '2021',
    genre: 'Action, Adventure',
    episodes: '8 Episodes',
    rating: '7.9/10',
    popularity: '-',
    language: 'English',
    synopsis: 'Dark forces conspire against orphan mapmaker Alina Starkov when she unleashes an extraordinary power that could change the fate of her war-torn world.',
    stars: 'Jessie Mei Li, Ben Barnes, Archie Renaux ',
    imageAsset: 'images/SB.jpg',
    imageUrls: [
      'https://i.insider.com/6083652a5f6110001827101c?width=1200&format=jpeg',
      'https://metro.co.uk/wp-content/uploads/2021/01/PRC_180653847.jpg?quality=90&strip=all',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQeu2W6m26kWXSqBNaj7jpq68aacl6hgAkcgcYrPtN-TBXjP3S7XtLQAGDzgOZIIkmsBY&usqp=CAU'
    ]
  ),
  ReviewSeries(
    title: 'Stranger Things season 4',
    year: '2021',
    genre: 'Mystery, Horror',
    episodes: '34 Episodes',
    rating: '8.7/10',
    popularity: '35',
    language: 'English',
    synopsis: 'When a young boy disappears, his mother, a police chief and his friends must confront terrifying supernatural forces in order to get him back.',
    stars: 'Millie Bobby Brown, Finn Wolfhard, Winona Ryder',
    imageAsset: 'images/ST.jpg',
    imageUrls: [
      'https://m.media-amazon.com/images/M/MV5BYmE5MDczY2EtNmRhZi00ZTBhLTliODktYzY3YzM0MTIxYzVkXkEyXkFqcGdeQWFsZWxvZw@@._V1_UX477_CR0,0,477,268_AL_.jpg',
      'https://i.ytimg.com/vi/2XeM7A0vGQo/maxresdefault.jpg', 
      'https://mmc.tirto.id/image/otf/880x495/2019/07/10/film-stranger-things-2016-imdb--3_ratio-16x9.jpg'
    ]
  ),
  ReviewSeries(
    title: 'The Gifted: Graduation',
    year: '2020',
    genre: 'Mystery, Sci-Fi',
    episodes: '13 Episodes',
    rating: '8.1/10',
    popularity: '124',
    language: 'Thai',
    synopsis: 'Two years after Pang and Wave\'s failed revolt, a new generation of Gifted students and a new threat arrive, reviving the struggle to bring down Ritdha High School\'s harsh system to greater heights.',
    stars: 'Korapat Kirdpan, Nattawat Finkler, Wanchana Sawatdee',
    imageAsset: 'images/TGG2.jpg',
    imageUrls: [
      'https://i.ytimg.com/vi/QsKVp2VTmgY/maxresdefault.jpg',
      'https://m.media-amazon.com/images/M/MV5BYzc5NTViOTItNGMyNy00ZmJlLTg1ZmYtNGIxNjI2NDEzYjcxXkEyXkFqcGdeQXVyMTA2NTM0NzM5._V1_.jpg',
      'https://m.media-amazon.com/images/M/MV5BZjYzMmZmOTQtNTM4OC00NzU4LWIwYjctNTMxMmViNWU3OGJjXkEyXkFqcGdeQXVyMTA2NTM0NzM5._V1_.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiCIyRv2tgKPC0ZpN-pHIyvjehh4SjrJRe-fS8MuTi-SwgoTJSXQ1-CHGSWDLA5-iV5RA&usqp=CAU',

    ]
  ),

];