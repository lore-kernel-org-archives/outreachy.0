Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DC51A5B8E
	for <outreachy@lists.linux.dev>; Mon,  7 Apr 2025 14:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744034966; cv=none; b=RDMl93Zu2KOCsJFe49i0ValgSl4U8Gf9OMIoeWsiTlOx70OY9kGgfr+wemdptgeUMHyhG+8BJuBe43/qOKqp7agv7fUgbxDu66xyGLFkSDpiFqz7ELaT+guotd4k9HpXIWUqlHC5yGdOJXwC0hWXPyNmULe2u0TebrJhV1BJkAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744034966; c=relaxed/simple;
	bh=yBDwc1uC4uqb46JB7AVF5l7cGam8r7fgIkPwDX6JaUs=;
	h=Message-ID:Subject:From:To:Cc:Date:Content-Type:MIME-Version; b=qqEwF7o0eSXzZmSt599oq4xQPFDWtxFufPxmqavzqSUXVeYUc3FuTqCjK+lgKVURSqXdR4EIm0Yoap3LGseKhjkeNCVU7/p3jB0X1D20GK5z6TJCTvp2sJN0O1PqLbbKwX3TQPjIwBlDLFE7JPsvQedi8okj4vaS/35veXrwxgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Po2l356e; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Po2l356e"
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-399749152b4so2395555f8f.3
        for <outreachy@lists.linux.dev>; Mon, 07 Apr 2025 07:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744034962; x=1744639762; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=FJ2m6BiMbTvAUUinpn5TCKDayqGqgIwegvI7pM6Zw78=;
        b=Po2l356e99Uh3ITKOBDiQUcbKiVpGYGV30by8GGniMCKNGkXKJnpuoM2MEUV0DT1Kv
         YH0Im9vAFiRxOZjIDI0TnVn5NYT/QM09aUJkWRiZUmtM/g8JWAVbViWz+3asKKj7T1Kq
         pATLF0FOF3nUh3Y/vYkcWlg5FecJMeGY3ufNqAulf8vA3l6B8x+r8mfoIuifHzij6PME
         dU62qAksIA51ADrmseDF3rxYPKo90KuSFOaXsuCIHusq9lYiin72PcTiTClKegT+6occ
         B5bupVDs32nVgvAPdXua+KfRlRty3ypxxdAHXMlVLsLQUIlslbqy+Xb/FLjFgI4EZiFM
         Ln0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744034962; x=1744639762;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FJ2m6BiMbTvAUUinpn5TCKDayqGqgIwegvI7pM6Zw78=;
        b=jDhKH4juKTawWOAmkfI4NP1C4AZWW8vKeT7PvJzYFtuFkFtyFCqrniMZLO/aEe2YIq
         /SN5xyLIQ4AQz/9prR2aIfHCKHxC+0cbt20y2skUf9cZZJlRIBGpQC1IjFIMJi28D4+E
         +u5vu24a+1SyXe6TNzVAsz8o2/StghH3SUFUvhPMauqhLfRYNoCBtailBmj50Jw/Mnt9
         +W8CjnzWzVknTZtbU8uxRttymY4nCZquWlpGKsOQ63TwnP9Oyg+rExo1xib1BB/Mz8iK
         awcFTWYvWnQW+st6+1BKI6BSU9kVDztHq1a1/up+PyOHraXKA+Gc1w3oibZ7kGU+J9j3
         kgTA==
X-Gm-Message-State: AOJu0Yz5Of2MtjowY9DGVcccNi/nRn1uwlSARz7k5Odt894Y8akois/r
	dpzL7DWM8aaqrOqaERVdx0yMZ+NlDhjSs7y1lmcRU0ULOQ5bm9Q6/24YLKyz
X-Gm-Gg: ASbGncuqPJHwMmsuUk73kDxAiNfhqmIWNh+x2YrR2zjawbiDVVSW6J7wv5FTIL1adqR
	0+CMinoM1oORrZgKYgwcYWFLUbLOAZQL3JIsq3X0cuWRa4Ma/gRv+sAKAEBRQpoysksOt3oLRa2
	HS/lcBmPZY6EmTm8rJ458hWTsVASZjnlPoXEAxdH74FAsoC9ihIXCS25APClj8yXbugnduawJq0
	HQ6pp6xQYmITJ03LGxbJhf4iJYShB8so6jAPC6rchokcmIWPNy5zL8VADV7JXI5gJkd5mktT2BC
	7qwvUVN+8bamxnTbJpRpF2m8H02mlDWtpQoPw161jIxV920LXHf98Vc=
X-Google-Smtp-Source: AGHT+IEysZVP45wfClyFCz7Evy8jUvYtj/Q35MNyNy3SsU3MGddjkf+JTU5LPo3M8tMUhHYsEReEmA==
X-Received: by 2002:a5d:5f8f:0:b0:39c:1f04:bb4a with SMTP id ffacd0b85a97d-39cb35b202emr11419653f8f.10.1744034961858;
        Mon, 07 Apr 2025 07:09:21 -0700 (PDT)
Received: from [172.16.8.120] ([197.155.71.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c300969e1sm12312847f8f.10.2025.04.07.07.09.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 07:09:21 -0700 (PDT)
Message-ID: <b3dc1aa06ce1b4507beeefc35ed2f76e26a8ca5b.camel@gmail.com>
Subject: [v2]: Local-variable initialization semantic patch update
From: Erick Karanja <karanja99erick@gmail.com>
To: outreachy@lists.linux.dev, Julia Lawall <Julia.Lawall@inria.fr>
Cc: Dan Carpenter <dan.carpenter@linaro.org>
Date: Mon, 07 Apr 2025 17:09:18 +0300
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

This semantic patch transforms local variables by combining declaration
and initialization for conciseness. While this improves clarity in many
cases, it is undesirable when a function call is used for
initialization, as it obscures side effects of the function call,
reduces readability, and complicates debugging.
This updated semantic patch catches these conditions and prevents
transforming the code in such cases.

below is the updated semantic patch.

@initialize:ocaml@
@@

let bigcode p =3D
  let p =3D List.hd p in
  (p.Coccilib.line <> p.Coccilib.line_end) ||
  (p.Coccilib.col_end - p.Coccilib.col >=3D 60)


@r1@
type T;
identifier x;
position p;
@@

T@p x;

@badr1@
type T,T2;
identifier r1.x,y;
statement S1,S2;
position r1.p;
@@

T@p x;
... when !=3D S1
T2 y;
... when !=3D S2
x =3D <+... y ...+>;

@badr1a@
type T;
expression e,f;
identifier r1.x;
statement S,S1,S2;
position r1.p;
binary operator op;
@@

T@p x;
... when !=3D S
x =3D e;
if (<+...\(x =3D=3D NULL\|x !=3D NULL\|x op 0\|f(...,x,...)\)...+>) S1 else
S2

@badr1b@
type T;
expression e;
identifier r1.x;
statement S;
position r1.p;
position q : script:ocaml() { bigcode q };
@@

T@p x;
... when !=3D S
x =3D e@q;

@badr_func_assign@
type T;
identifier r1.x;
position r1.p;
identifier f;
statement S;
@@

T@p x;
... when !=3D S
x =3D f(...);

@depends on !badr1 && !badr1a && !badr1b && !badr_func_assign@
type T;
identifier r1.x;
expression e;
statement S;
position r1.p;
@@

T@p x
+ =3D e
  ;
... when !=3D S
- x =3D e;

// ---------------------------

@r2@
type T;
identifier x;
position p;
@@

T@p x;

@badr2@
type T,T2;
identifier r2.x,y;
statement S1,S2;
position r2.p;
@@

T@p x;
... when !=3D S1
T2 y;
... when !=3D S2
x =3D <+... y ...+>;

@badr2a@
type T;
expression e,f;
identifier r2.x;
statement S,S1,S2;
position r2.p;
binary operator op;
@@

T@p x;
... when !=3D S
x =3D e;
if (<+...\(x =3D=3D NULL\|x !=3D NULL\|x op 0\|f(...,x,...)\)...+>) S1 else
S2

@badr2b@
type T;
expression e;
identifier r2.x;
statement S;
position r2.p;
position q : script:ocaml() { bigcode q };
@@

T@p x;
... when !=3D S
x =3D e@q;

@badr_func_assign2@

type T;
identifier r2.x;
position r2.p;
identifier f;
statement S;
@@

T@p x;
... when !=3D S
x =3D f(...);

@depends on !badr2 && !badr2a && !badr2b && !badr_func_assign2@
type T;
identifier r2.x;
expression e;
statement S;
position r2.p;
@@

T@p x
+ =3D e
  ;
... when !=3D S
- x =3D e;

// ---------------------------

@r3@
type T;
identifier x;
position p;
@@

T@p x;

@badr3@
type T,T2;
identifier r3.x,y;
statement S1,S2;
position r3.p;
@@

T@p x;
... when !=3D S1
T2 y;
... when !=3D S2
x =3D <+... y ...+>;

@badr3a@
type T;
expression e,f;
identifier r3.x;
statement S,S1,S2;
position r3.p;
binary operator op;
@@

T@p x;
... when !=3D S
x =3D e;
if (<+...\(x =3D=3D NULL\|x !=3D NULL\|x op 0\|f(...,x,...)\)...+>) S1 else
S2

@badr3b@
type T;
expression e;
identifier r3.x;
statement S;
position r3.p;
position q : script:ocaml() { bigcode q };
@@

T@p x;
... when !=3D S
x =3D e@q;

@badr_func_assign3@
type T;
identifier r3.x;
position r3.p;
identifier f;
statement S;
@@

T@p x;
... when !=3D S
x =3D f(...);

@depends on !badr3 && !badr3a && !badr3b && !badr_func_assign3@
type T;
identifier r3.x;
expression e;
statement S;
position r3.p;
@@

T@p x
+ =3D e
  ;
... when !=3D S
- x =3D e;

