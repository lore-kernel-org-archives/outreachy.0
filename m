X-GM-THRID: 6252726867929858048
X-Received: by 2002:a37:48d8:: with SMTP id v207mr3594472qka.26.1541023317389;
        Wed, 31 Oct 2018 15:01:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4a83:: with SMTP id x125-v6ls6954006qka.12.gmail; Wed,
 31 Oct 2018 15:01:56 -0700 (PDT)
X-Google-Smtp-Source: AJdET5d1B9tDabcH6YJx9k95h7sadn1oqbKWgwTcdsgxvMdG5CCJwkmum8u0AUQ2bWDNuwpqhoOu
X-Received: by 2002:a37:5108:: with SMTP id f8-v6mr3794047qkb.54.1541023316593;
        Wed, 31 Oct 2018 15:01:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541023316; cv=none;
        d=google.com; s=arc-20160816;
        b=QxBWwDGeVDYmT+I6wnDNP8Knu9Su2LgFLIsspYEvkx3YagmLP/UdP/UfqZY6b77eEf
         Sq4WiiRB8+lqXFURXe9QJwat7lnEbFiVRgaE7w2l1j6p3imZgW871YiGk/gcqu9W0Q+M
         z3JfdEiptk2OMwBB1468Y0C9Y1PgJF6GKAKnyy9wylI/hCQqtDNZDvAUYijOwadl+K0a
         pJSYuE17ithYUcb+aSTa9DazMJlff59IojL2R6EQGgpaYKwgIWMZvZnDzvbknHualgit
         KbpnO4iLh2BtSo1OQG9Vwp11EobBqg1uBMWkqpLM1ugMoa2+snuyOy6u7iHtF/BPQJoz
         k0hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=vJUYa5ymtE5Qbo2UIzEXQo/clS9BIgeSNuWeh/0iyK8=;
        b=oaXctHwB0N1hMoeefe+dAskICtLWm88S0fhjXFv7nL0y80pSNDLsZWAQEhkTGG3h8R
         Px2ipDAIlDCde46THfKMAv2lR97j9/F02gb7y4k2EPnjuTt0dIwVDQWipT+wfpJIEyUi
         TlvvyIIjK0Id4hBPDayvfYcTTEKTeB8+EiFc4RintSJ7lutbGzAT40tFtwByvv9ahcHT
         pL+LRW/7WQaCxvb3CUt5nTt7Z/AktGj8BE2frXIZFXwjwxiGnB5fFwWBDUfwLVsVNlif
         FT+xRZfXSyitufCB0YEjYOvU11kvJYfw71n/bG2ptPMDURyGfSW2TVUmYMm4Ufk0hPQy
         0gZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZwSUZLPb;
       spf=pass (google.com: domain of dr.saba7@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=dr.saba7@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dr.saba7@gmail.com>
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com. [2607:f8b0:4864:20::d33])
        by gmr-mx.google.com with ESMTPS id d124si106144qka.5.2018.10.31.15.01.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 15:01:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of dr.saba7@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) client-ip=2607:f8b0:4864:20::d33;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZwSUZLPb;
       spf=pass (google.com: domain of dr.saba7@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=dr.saba7@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd33.google.com with SMTP id 79-v6so10864416iou.2;
        Wed, 31 Oct 2018 15:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=vJUYa5ymtE5Qbo2UIzEXQo/clS9BIgeSNuWeh/0iyK8=;
        b=ZwSUZLPbR/E69DAMuLE8G2z1zfZNNKvtyS3XrpjSCudjkgIkbUJ2Ykht8lPBmjytkx
         9Q3FHoN6HcFCfuyc+mppwNeZKy7Z39y++pEvjAIDPRIEDIfr2CnfQgbD/06ez59pgtlT
         bj68pjCoF/Oap8txpEJD3NMmh8radl9bMjOEu6Iil2IHlLOd8nuM8qbC6Jg8gh7DKrln
         SBF75YB6TVYm3N+VnqtTEae6Umm4yyS/xBVMt/0x0S3w+IlmyhShgGLL6fDzzfwPRBBf
         sAu1pJ4KEu/t28nLo0cO40JHQMfTl/E+X9Mwe2xKJXdMkT+eGcqkSH8IzGgumNfdYwRR
         cLpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=vJUYa5ymtE5Qbo2UIzEXQo/clS9BIgeSNuWeh/0iyK8=;
        b=FNB0VoMPxnN7nJnXUT+qt8nQ3Kct3+Z0diFYG+tTEwYXQvG06IHM3aPXXMIcItaZ0z
         r2Ej/u63aUiDBKirgfPKapMzJhkDJfnvIphUE1IakbhsSCR0wdjqLwTCa2z6Uz0DWng9
         ivKngek3k0ZLElHN+FqyEJ4VXmt9NwzecGYcgp48XXfqRdKP7O7Q/7D7LKYyeGvnAxlq
         257GaAJHgPn3Kex8+SsltU47rve0fIT10/Udu3KxkzRup+JcdyFt48YsnMu8AuXGKesu
         MKGrwdt6pCHLiM+k1eNL9x6btP9JeB4nDSdw9MGRZt0NKsuQLChcqUwJkWx0+7omsca/
         X84g==
X-Gm-Message-State: AGRZ1gK9f3eTwTZsgTU+3o5QFsOCnbaisJn/SiCjgvL4evOtiGBteLLh
	D2sNnRrPWz111pBXHF0yRnDEvuXSvrpKbx67xWqHWw==
X-Received: by 2002:a6b:9383:: with SMTP id v125-v6mr2898247iod.282.1541023315853;
 Wed, 31 Oct 2018 15:01:55 -0700 (PDT)
MIME-Version: 1.0
References: <CADm1dMMeNa6DsCtB7LfWUOjGeMF8wtPiH=L5oe68POeiDCemtg@mail.gmail.com>
 <CADm1dMNv0gTgx509t9OjP4gyGVRKjKNk9XCYaF3oO8bxnzNAFw@mail.gmail.com>
 <CALNN6H5JGoEEY7d3yA2nKWrCUm3dkaguTzhojN_a74K+W-pKKg@mail.gmail.com>
 <CALNN6H5EJWM=8VO0sW3Bc11iSLBFt90+ORcDh6W81C3nHN8dsw@mail.gmail.com>
 <CALNN6H4EVadP=6MRg5aej2bY7hnRA3ENwWmd_hxD+cF3KYqEsA@mail.gmail.com>
 <CALNN6H4GHNX5FxcQ9b-1cGdW3H6yXS3geMLyXitR5Ln=YdTVzw@mail.gmail.com>
 <CALNN6H7mkmncFwcOoZy4O9-MRnYhEfuc2hFF9vsEUdw1FNT8Cw@mail.gmail.com>
 <CALNN6H6QDFth1zMFBTEaMUp6VTCaH+TCgHm4hG-vKg439D27UQ@mail.gmail.com>
 <CALNN6H6nr+a4TkaYYT+6xMj=XcwcRBHr2EfaByESHLzmQu99sw@mail.gmail.com>
 <CA+QeeU0H7piuGpUv_n9CPYLfmk1aRXqa6Hdx5dNc32Jk8rptVA@mail.gmail.com>
 <CA+QeeU1ma_Kdsu8hBUcimYWPGt397g3kFwEO-SkYUOj6DjcQrQ@mail.gmail.com>
 <CA+TJ=vN=8a9x9eYNbr6-zezJD-tjgZ5SO=nuG+Jjs_HsSGRh8Q@mail.gmail.com>
 <CA+TJ=vPUMvHTYLVwx=3K=_9dvz9tOnxYkvd2KWFcmoJSMqyBuw@mail.gmail.com>
 <CA+TJ=vO_EfsYGAB6t-5mvEFgrj0r8byzbH1ykiaoPD_qSLwLug@mail.gmail.com>
 <CA+TJ=vMpTz+FzSWpk3TQ2rvRJha16cBtpOg+tyU9YGSkCUV6mg@mail.gmail.com>
 <CA+TJ=vOXhfO=fynxK2_vx+_mEwU034pE8eB93TP16rwaOBvfSg@mail.gmail.com>
 <CA+TJ=vMSUs=wyjWdxQP7X3Y6gyzjef9Y9_3E6kiCxO88ja9g4A@mail.gmail.com>
 <CA+TJ=vPgY8V8xU1Tsd_6f=B0Erf0eyZ4ZCB6_Tpm2peEFp6McQ@mail.gmail.com>
 <CA+TJ=vOeadpCCJ0mzoON4h5uEkzWCyLE3L+SJLyVin24f_dgtw@mail.gmail.com>
 <CA+TJ=vNXR+RKWS87+3Cvgu4fiRC_J=t2=wOvhVBniiu0VbU=WQ@mail.gmail.com>
 <CA+TJ=vMJKD0iG-8xCmNuwrBU-SQq7oeuUefCRkxNi_+6URUR0Q@mail.gmail.com>
 <CA+TJ=vOPV5FvQuBmof7ZKZP3WE1__t_qy=wS72etTfzXtLCYfA@mail.gmail.com>
 <CA+TJ=vOfqP00ohn0sbuq_boOQmXk+SHFqB6QU85Vw6hCFTNhbQ@mail.gmail.com>
 <CA+TJ=vOER00x523v4NAc8C8=ZGm2bVCAjZX5wTB3ixyGZW2ZTg@mail.gmail.com>
 <CA+TJ=vOJPCj7LUNxsu380W6Rc6mgWZqJY_rHN8w0mkerii2tbw@mail.gmail.com>
 <CA+TJ=vOhLZLGYwN3U76N-t9TfYu+hDxht-Sbkdcz47Sb69sELg@mail.gmail.com>
 <CA+TJ=vOX3c0c4Zt-vsmL986jSBMPYUSaPZc=7T7Okv-yLymJcg@mail.gmail.com>
 <CA+TJ=vOcqHu21AfU+SOUUCZWtKWBSjgRwwrXj9OGKEbuw66mqA@mail.gmail.com>
 <CA+TJ=vN76zpzyG-wTY7a+vaqyhxft5PO67XJ5C7mcobiYpxpCQ@mail.gmail.com>
 <CA+TJ=vPyduNabueRqj3KMaMw3Sn+nrh_m-Bz1QyPJtGyr9+vOg@mail.gmail.com>
 <CA+TJ=vOLmns++KPgXz+M8mCPa6RGf=pbWf3e3nz9qcy0g3RHUg@mail.gmail.com>
 <CA+TJ=vPigYUAn7=GsyEsXijhXa2562HAZOU=AHXVJJGpMGNqWg@mail.gmail.com>
 <CA+TJ=vNDfgE_-bG5HAmZF--=m=EM-9y1kfyaXbo7JO6oB+GHJA@mail.gmail.com>
 <CA+TJ=vOcZ5taWgnfnm6d4VLZ6CXvUrBLLMF_dUL9qxEEbBPmXA@mail.gmail.com>
 <CA+TJ=vN46=zugm40TO5K_txK2Rw+thR3W5x-6dOm+C5dj8e7Eg@mail.gmail.com>
 <CA+TJ=vOgqUFRs1Pw4F92sC=hTrCxqRipnRqWZsKi=uPOwJucvQ@mail.gmail.com>
 <CA+TJ=vPCPrAzi1i5m5TqmFgDOqHz_f2NTBznvXZ1Wwd-pSWP3g@mail.gmail.com>
 <CA+TJ=vPTct=F23n_J6gqR+3zY673iiQYEi6f773q00W_RcwLVQ@mail.gmail.com> <CAP7CLH_=rJPt2Si65=7TPCXH+L9nR7VLMMad4RitOv7Mt3_Ltw@mail.gmail.com>
In-Reply-To: <CAP7CLH_=rJPt2Si65=7TPCXH+L9nR7VLMMad4RitOv7Mt3_Ltw@mail.gmail.com>
From: sady assad <dr.saba7@gmail.com>
Date: Thu, 1 Nov 2018 01:01:40 +0300
Message-ID: <CAEfki2_Ux14=Bv3RVbsBxx4QqZMhHY51e-0OBDVf1xALO4NxDQ@mail.gmail.com>
Subject: =?UTF-8?B?RndkOiBVcyBjb25ncmVzcyBoZWFyaW5nIG9mIG1hYW4gYWxzYWFuIE1vbmV5IGxhdW5kcg==?=
	=?UTF-8?B?eSDZgti22YrYqSDYp9mE2YPZiNmG2LrYrNix2LMg2YTYutiz2YrZhCDYp9mE2KPZhdmI2KfZhCDZhNmE?=
	=?UTF-8?B?2YXZhNmK2KfYr9mK2LEg2YXYudmGINin2YTYtdin2YbYuQ==?=
To: uk.rec.sheds@googlegroups.com, alt.folklore.computers@googlegroups.com, 
	newsfromunderground@googlegroups.com, it.media.tv@googlegroups.com, 
	haberposta@googlegroups.com, soc.retirement@googlegroups.com, 
	outreachy-kernel@googlegroups.com, claytonsoares@googlegroups.com, 
	pl.soc.polityka@googlegroups.com, abn-stocks--trading-ideas@googlegroups.com, 
	cinemalovers@googlegroups.com, alt.religion.apparitions@googlegroups.com, 
	rec.arts.sf.written@googlegroups.com, uk.media.radio.archers@googlegroups.com, 
	sttims@googlegroups.com, sfuwh@googlegroups.com, 
	alt.sports.football.pro.buffalo-bills@googlegroups.com, 
	itatonlineorg_newsletter@googlegroups.com, soc.rights.human@googlegroups.com, 
	uk.legal.moderated@googlegroups.com, brothermikegoestenkors@googlegroups.com, 
	circulator38@googlegroups.com, tryton-commit@googlegroups.com, 
	golf-hpna@googlegroups.com, real-estate-sushant-lok@googlegroups.com, 
	loveu4ever.earth@gmail.com
Content-Type: multipart/mixed; boundary="00000000000055c30c05798d734f"

--00000000000055c30c05798d734f
Content-Type: multipart/alternative; boundary="00000000000055c30605798d734d"

--00000000000055c30605798d734d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

WW91VHViZSB2aWRlb3Mgb2YNCg0KDQoNCiBVLlMuIENvbmdyZXNzIG1vbmV5IGxhdW5kZXJpbmcg
aGVhcmluZw0KDQoNCm9mDQoNClNhdWRpIEJpbGxpb25haXJlICAiIE1hYW4gIEFsIHNhbmVhIg0K
DQogd2l0aCAqYmFuayBvZiBBbWVyaWNhKg0KDQoNCmFuZCAgVGhlICBvd25lciBvZiBTYWFkIEhv
c3BpdGFsIGFuZCAgU2Nob29scw0KDQogaW4gdGhlIEVhc3Rlcm4gUHJvdmluY2UgaW4gKlNhdWRp
IEFyYWJpYSoNCg0KDQoNCmFuZCB0aGUgQ2hhaXJtYW4gb2YgdGhlIEJvYXJkIG9mIERpcmVjdG9y
cyBvZiBBd2FsIEJhbmsgIGluICpCYWhyYWluKg0KDQoNCldpdGggQXJhYmljIFN1YnRpdGxlcw0K
DQoNCg0KDQoNCirZhdmI2YLYuSDYp9mE2YrZiNiq2YrZiNioINin2YTYsNmKINi52LHYtiDYrNmE
2LPYqSDYp9iz2KrZhdin2Lkg2KfZhNmD2YjZhtis2LHYsyDYp9mE2KPZhdix2YrZg9mKICoNCg0K
KiDZhNmF2KrYp9io2LnYqSDZhti02KfYt9in2Kog2LrYs9mEINin2YTYo9mF2YjYp9mEINmI2YbY
tNin2LfYp9iqKg0KDQoNCg0KKtin2YTYs9i52YjYr9mKINmF2LnZhiDYudio2K/Yp9mE2YjYp9it
2K8g2KfZhNi12KfZhti5Kg0KDQoNCg0KKtmF2KfZhNmDINmF2LPYqti02YHZiSAg2YjYtNix2YPY
qSDYs9i52K8gINmI2YXYr9in2LHYsyDYs9i52K8g2KjYp9mE2YXZhti32YLYqSDYp9mE2LTYsdmC
2YrYqSDYqNin2YTYs9i52YjYr9mK2KkgICDZiNix2KbZitizINmF2KzZhNizDQrYp9iv2KfYsdip
INio2YbZgyDYp9mI2KfZhCDYp9mE2KjYrdix2YrZhtmKKg0KDQoNCg0KKtmF2KrYsdis2YUg2KjY
p9mE2YTYutipINin2YTYudix2KjZitipKg0KDQoNCg0KaHR0cDovL3d3dy55b3V0dWJlLmNvbS93
YXRjaD92PW1JQk5uUXZoVThzDQo=
--00000000000055c30605798d734d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=
=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"lt=
r"><div class=3D"gmail_quote"><br><div class=3D"m_7924559679305495246m_8435=
142519734354064m_3451544980988140958HOEnZb"><div class=3D"m_792455967930549=
5246m_8435142519734354064m_3451544980988140958h5"><div dir=3D"ltr"><div cla=
ss=3D"gmail_quote"><div class=3D"m_7924559679305495246m_8435142519734354064=
m_3451544980988140958m_-1532158172797199067HOEnZb"><div class=3D"m_79245596=
79305495246m_8435142519734354064m_3451544980988140958m_-1532158172797199067=
h5"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=
=3D"gmail_quote"><font color=3D"#222222"></font><br><div dir=3D"ltr"><div c=
lass=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=
=3D"ltr"><div class=3D"gmail_quote"><br><br><div class=3D"m_792455967930549=
5246m_8435142519734354064m_3451544980988140958m_-1532158172797199067m_-9155=
773050320362118m_6265361273624342286m_783608758677954300m_-4832258295562669=
429m_368574944900017359HOEnZb"><div class=3D"m_7924559679305495246m_8435142=
519734354064m_3451544980988140958m_-1532158172797199067m_-91557730503203621=
18m_6265361273624342286m_783608758677954300m_-4832258295562669429m_36857494=
4900017359h5"><div dir=3D"ltr"><div class=3D"gmail_quote"><br><div dir=3D"l=
tr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote">=
<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"=
gmail_quote"><br><div dir=3D"ltr"><div class=3D"gmail_quote"><br><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_qu=
ote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div class=3D"m_7924559679=
305495246m_8435142519734354064m_3451544980988140958m_-1532158172797199067m_=
-9155773050320362118m_6265361273624342286m_783608758677954300m_-48322582955=
62669429m_368574944900017359m_5311410579910600017m_-1028007182771502888m_-5=
556847785940785557m_5527881038400828473m_5296927896078032125m_3315956123115=
814851m_2155004414972708741m_821697035496247047m_-3233976008921745967HOEnZb=
"><div class=3D"m_7924559679305495246m_8435142519734354064m_345154498098814=
0958m_-1532158172797199067m_-9155773050320362118m_6265361273624342286m_7836=
08758677954300m_-4832258295562669429m_368574944900017359m_53114105799106000=
17m_-1028007182771502888m_-5556847785940785557m_5527881038400828473m_529692=
7896078032125m_3315956123115814851m_2155004414972708741m_821697035496247047=
m_-3233976008921745967h5"><div dir=3D"ltr"><div class=3D"gmail_quote"><div =
dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail=
_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div class=3D"m_7924559=
679305495246m_8435142519734354064m_3451544980988140958m_-153215817279719906=
7m_-9155773050320362118m_6265361273624342286m_783608758677954300m_-48322582=
95562669429m_368574944900017359m_5311410579910600017m_-1028007182771502888m=
_-5556847785940785557m_5527881038400828473m_5296927896078032125m_3315956123=
115814851m_2155004414972708741m_821697035496247047m_-3233976008921745967m_3=
057471102364545636m_9126931093877112352m_1381257612561390782m_-387221187462=
2193804HOEnZb"><div class=3D"m_7924559679305495246m_8435142519734354064m_34=
51544980988140958m_-1532158172797199067m_-9155773050320362118m_626536127362=
4342286m_783608758677954300m_-4832258295562669429m_368574944900017359m_5311=
410579910600017m_-1028007182771502888m_-5556847785940785557m_55278810384008=
28473m_5296927896078032125m_3315956123115814851m_2155004414972708741m_82169=
7035496247047m_-3233976008921745967m_3057471102364545636m_91269310938771123=
52m_1381257612561390782m_-3872211874622193804h5"><div dir=3D"ltr"><div clas=
s=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"l=
tr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote">=
<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"=
gmail_quote"><br><div dir=3D"ltr"><div class=3D"gmail_quote"><div class=3D"=
m_7924559679305495246m_8435142519734354064m_3451544980988140958m_-153215817=
2797199067m_-9155773050320362118m_6265361273624342286m_783608758677954300m_=
-4832258295562669429m_368574944900017359m_5311410579910600017m_-10280071827=
71502888m_-5556847785940785557m_5527881038400828473m_5296927896078032125m_3=
315956123115814851m_2155004414972708741m_821697035496247047m_-3233976008921=
745967m_3057471102364545636m_9126931093877112352m_1381257612561390782m_-387=
2211874622193804m_-1237601941391120104m_2982253326279970612m_68028848955110=
19645m_5971219624204820519m_8734996814117936651m_-6817322807802538732m_5119=
347417685918848HOEnZb"><div class=3D"m_7924559679305495246m_843514251973435=
4064m_3451544980988140958m_-1532158172797199067m_-9155773050320362118m_6265=
361273624342286m_783608758677954300m_-4832258295562669429m_3685749449000173=
59m_5311410579910600017m_-1028007182771502888m_-5556847785940785557m_552788=
1038400828473m_5296927896078032125m_3315956123115814851m_215500441497270874=
1m_821697035496247047m_-3233976008921745967m_3057471102364545636m_912693109=
3877112352m_1381257612561390782m_-3872211874622193804m_-1237601941391120104=
m_2982253326279970612m_6802884895511019645m_5971219624204820519m_8734996814=
117936651m_-6817322807802538732m_5119347417685918848h5"><div dir=3D"ltr"><d=
iv class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div c=
lass=3D"m_7924559679305495246m_8435142519734354064m_3451544980988140958m_-1=
532158172797199067m_-9155773050320362118m_6265361273624342286m_783608758677=
954300m_-4832258295562669429m_368574944900017359m_5311410579910600017m_-102=
8007182771502888m_-5556847785940785557m_5527881038400828473m_52969278960780=
32125m_3315956123115814851m_2155004414972708741m_821697035496247047m_-32339=
76008921745967m_3057471102364545636m_9126931093877112352m_13812576125613907=
82m_-3872211874622193804m_-1237601941391120104m_2982253326279970612m_680288=
4895511019645m_5971219624204820519m_8734996814117936651m_-68173228078025387=
32m_5119347417685918848m_-7550710920388845216m_-207321846227075688HOEnZb"><=
div class=3D"m_7924559679305495246m_8435142519734354064m_345154498098814095=
8m_-1532158172797199067m_-9155773050320362118m_6265361273624342286m_7836087=
58677954300m_-4832258295562669429m_368574944900017359m_5311410579910600017m=
_-1028007182771502888m_-5556847785940785557m_5527881038400828473m_529692789=
6078032125m_3315956123115814851m_2155004414972708741m_821697035496247047m_-=
3233976008921745967m_3057471102364545636m_9126931093877112352m_138125761256=
1390782m_-3872211874622193804m_-1237601941391120104m_2982253326279970612m_6=
802884895511019645m_5971219624204820519m_8734996814117936651m_-681732280780=
2538732m_5119347417685918848m_-7550710920388845216m_-207321846227075688h5">=
<div dir=3D"ltr"><div class=3D"gmail_quote"><div class=3D"m_792455967930549=
5246m_8435142519734354064m_3451544980988140958m_-1532158172797199067m_-9155=
773050320362118m_6265361273624342286m_783608758677954300m_-4832258295562669=
429m_368574944900017359m_5311410579910600017m_-1028007182771502888m_-555684=
7785940785557m_5527881038400828473m_5296927896078032125m_331595612311581485=
1m_2155004414972708741m_821697035496247047m_-3233976008921745967m_305747110=
2364545636m_9126931093877112352m_1381257612561390782m_-3872211874622193804m=
_-1237601941391120104m_2982253326279970612m_6802884895511019645m_5971219624=
204820519m_8734996814117936651m_-6817322807802538732m_5119347417685918848m_=
-7550710920388845216m_-207321846227075688m_-4135847931549709617HOEnZb"><div=
 class=3D"m_7924559679305495246m_8435142519734354064m_3451544980988140958m_=
-1532158172797199067m_-9155773050320362118m_6265361273624342286m_7836087586=
77954300m_-4832258295562669429m_368574944900017359m_5311410579910600017m_-1=
028007182771502888m_-5556847785940785557m_5527881038400828473m_529692789607=
8032125m_3315956123115814851m_2155004414972708741m_821697035496247047m_-323=
3976008921745967m_3057471102364545636m_9126931093877112352m_138125761256139=
0782m_-3872211874622193804m_-1237601941391120104m_2982253326279970612m_6802=
884895511019645m_5971219624204820519m_8734996814117936651m_-681732280780253=
8732m_5119347417685918848m_-7550710920388845216m_-207321846227075688m_-4135=
847931549709617h5"><div dir=3D"ltr"><div class=3D"gmail_quote"><font color=
=3D"#222222"></font><br><div class=3D"m_7924559679305495246m_84351425197343=
54064m_3451544980988140958m_-1532158172797199067m_-9155773050320362118m_626=
5361273624342286m_783608758677954300m_-4832258295562669429m_368574944900017=
359m_5311410579910600017m_-1028007182771502888m_-5556847785940785557m_55278=
81038400828473m_5296927896078032125m_3315956123115814851m_21550044149727087=
41m_821697035496247047m_-3233976008921745967m_3057471102364545636m_91269310=
93877112352m_1381257612561390782m_-3872211874622193804m_-123760194139112010=
4m_2982253326279970612m_6802884895511019645m_5971219624204820519m_873499681=
4117936651m_-6817322807802538732m_5119347417685918848m_-7550710920388845216=
m_-207321846227075688m_-4135847931549709617m_-6342853627480324602HOEnZb"><d=
iv class=3D"m_7924559679305495246m_8435142519734354064m_3451544980988140958=
m_-1532158172797199067m_-9155773050320362118m_6265361273624342286m_78360875=
8677954300m_-4832258295562669429m_368574944900017359m_5311410579910600017m_=
-1028007182771502888m_-5556847785940785557m_5527881038400828473m_5296927896=
078032125m_3315956123115814851m_2155004414972708741m_821697035496247047m_-3=
233976008921745967m_3057471102364545636m_9126931093877112352m_1381257612561=
390782m_-3872211874622193804m_-1237601941391120104m_2982253326279970612m_68=
02884895511019645m_5971219624204820519m_8734996814117936651m_-6817322807802=
538732m_5119347417685918848m_-7550710920388845216m_-207321846227075688m_-41=
35847931549709617m_-6342853627480324602h5"><div dir=3D"ltr"><div class=3D"g=
mail_quote"><div class=3D"m_7924559679305495246m_8435142519734354064m_34515=
44980988140958m_-1532158172797199067m_-9155773050320362118m_626536127362434=
2286m_783608758677954300m_-4832258295562669429m_368574944900017359m_5311410=
579910600017m_-1028007182771502888m_-5556847785940785557m_55278810384008284=
73m_5296927896078032125m_3315956123115814851m_2155004414972708741m_82169703=
5496247047m_-3233976008921745967m_3057471102364545636m_9126931093877112352m=
_1381257612561390782m_-3872211874622193804m_-1237601941391120104m_298225332=
6279970612m_6802884895511019645m_5971219624204820519m_8734996814117936651m_=
-6817322807802538732m_5119347417685918848m_-7550710920388845216m_-207321846=
227075688m_-4135847931549709617m_-6342853627480324602m_-6822679518088779229=
HOEnZb"><div class=3D"m_7924559679305495246m_8435142519734354064m_345154498=
0988140958m_-1532158172797199067m_-9155773050320362118m_6265361273624342286=
m_783608758677954300m_-4832258295562669429m_368574944900017359m_53114105799=
10600017m_-1028007182771502888m_-5556847785940785557m_5527881038400828473m_=
5296927896078032125m_3315956123115814851m_2155004414972708741m_821697035496=
247047m_-3233976008921745967m_3057471102364545636m_9126931093877112352m_138=
1257612561390782m_-3872211874622193804m_-1237601941391120104m_2982253326279=
970612m_6802884895511019645m_5971219624204820519m_8734996814117936651m_-681=
7322807802538732m_5119347417685918848m_-7550710920388845216m_-2073218462270=
75688m_-4135847931549709617m_-6342853627480324602m_-6822679518088779229h5">=
<div dir=3D"ltr"><div class=3D"gmail_quote"><div class=3D"m_792455967930549=
5246m_8435142519734354064m_3451544980988140958m_-1532158172797199067m_-9155=
773050320362118m_6265361273624342286m_783608758677954300m_-4832258295562669=
429m_368574944900017359m_5311410579910600017m_-1028007182771502888m_-555684=
7785940785557m_5527881038400828473m_5296927896078032125m_331595612311581485=
1m_2155004414972708741m_821697035496247047m_-3233976008921745967m_305747110=
2364545636m_9126931093877112352m_1381257612561390782m_-3872211874622193804m=
_-1237601941391120104m_2982253326279970612m_6802884895511019645m_5971219624=
204820519m_8734996814117936651m_-6817322807802538732m_5119347417685918848m_=
-7550710920388845216m_-207321846227075688m_-4135847931549709617m_-634285362=
7480324602m_-6822679518088779229m_-686262336095167002HOEnZb"><div class=3D"=
m_7924559679305495246m_8435142519734354064m_3451544980988140958m_-153215817=
2797199067m_-9155773050320362118m_6265361273624342286m_783608758677954300m_=
-4832258295562669429m_368574944900017359m_5311410579910600017m_-10280071827=
71502888m_-5556847785940785557m_5527881038400828473m_5296927896078032125m_3=
315956123115814851m_2155004414972708741m_821697035496247047m_-3233976008921=
745967m_3057471102364545636m_9126931093877112352m_1381257612561390782m_-387=
2211874622193804m_-1237601941391120104m_2982253326279970612m_68028848955110=
19645m_5971219624204820519m_8734996814117936651m_-6817322807802538732m_5119=
347417685918848m_-7550710920388845216m_-207321846227075688m_-41358479315497=
09617m_-6342853627480324602m_-6822679518088779229m_-686262336095167002h5"><=
div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"g=
mail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><p=
 align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><span lang=
=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;font-size:14pt">=C2=A0</span></p><font color=3D"#000000" fac=
e=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;font-size:14pt">YouTube <span>videos of</span></spa=
n></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;font-size:20pt"><span>=C2=A0</span></span></s=
pan></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&quot;,&quot;san=
s-serif&quot;;font-size:20pt"><span>=C2=A0</span><span>U.S. Congress</span>
<span>money</span> <span>laundering</span></span><span lang=3D"EN" style=3D=
"color:rgb(51,51,51);font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;f=
ont-size:20pt"> </span><span><span lang=3D"EN" style=3D"color:red;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt">hearing</span><=
/span><span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;font-size:20pt"></span></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&quot;,&quot;san=
s-serif&quot;;font-size:10pt"><br>
</span><span><span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;font-size:20pt">of</span></span><span lang=3D"E=
N" style=3D"color:red;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
font-size:20pt"> </span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt"><br>


</span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:10pt"><br>
</span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:20pt">Saudi <span>Billionaire</sp=
an><span>=C2=A0 </span>&quot; </span><span><span lang=3D"EN" style=3D"color=
:red;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt">M=
aan</span></span><span lang=3D"EN" style=3D"color:red;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:20pt"> <span><span>=C2=A0</span>A=
l sanea</span></span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt">&quot;</span>=
</p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;font-size:20pt"><span>=C2=A0</span>with </span><u><=
span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&quot;,&quot;san=
s-serif&quot;;font-size:20pt">bank of America</span></u><span lang=3D"EN" s=
tyle=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;font-size:20pt"> </span><span style=3D"color:rgb(51,51,51);font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt"></span></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;font-size:10pt"><br>
</span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:20pt">and <span>=C2=A0</span>The<=
span>=C2=A0
</span>owner of <span>Saad</span> Hospital and<span>=C2=A0 </span><span>Sch=
ools</span></span></p><font color=3D"#000000" face=3D"Times New Roman" size=
=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;font-size:20pt"><span>=C2=A0</span><span>in</span>
<span>the</span> <span>Eastern</span> <span>Province</span>
<span>in </span></span><span><u><span lang=3D"EN" style=3D"color:red;font-f=
amily:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt">Saudi Arabia=
</span></u></span><span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt"></span></s=
pan></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;font-size:10pt"><span>=C2=A0</span></span></s=
pan></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;font-size:20pt">and</span></span><span lang=
=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;font-size:20pt"> the <span>Chairman of the Board</span> <spa=
n>of</span> <span>Directors</span> <span>of</span> <span>Awal
Bank<span>=C2=A0 </span>in </span></span><span><u><span lang=3D"EN" style=
=3D"color:red;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-siz=
e:20pt">Bahrain</span></u></span><span><span lang=3D"EN" style=3D"color:rgb=
(51,51,51);font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:2=
0pt"> </span></span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-fam=
ily:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt"><br>


</span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:10pt"><br>
<br>
</span><span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-size:14pt"=
><font face=3D"Times New Roman">With Arabic Subtitles</font></span></span><=
/p><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span lang=3D"AR-SY" style=3D"font-size:22pt" dir=3D"RTL"><font color=3D"=
#000000" face=3D"Times New Roman">=C2=A0</font></span></b></p><font color=
=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span lang=3D"AR-SY" style=3D"font-size:18pt" dir=3D"RTL"><font color=3D"=
#000000" face=3D"Times New Roman">=C2=A0</font></span></b></p><font color=
=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font color=3D"#000000"><font face=3D"Times New Roman"><b><span lang=3D"AR-S=
A" style=3D"font-size:20pt" dir=3D"RTL">=D9=85=D9=88=D9=82=D8=B9 =D8=A7=D9=
=84=D9=8A=D9=88=D8=AA=D9=8A=D9=88=D8=A8 =D8=A7=D9=84=D8=B0=D9=8A =D8=B9=D8=
=B1=D8=B6 =D8=AC=D9=84=D8=B3=D8=A9 =D8=A7=D8=B3=D8=AA=D9=85=D8=A7=D8=B9 =D8=
=A7=D9=84=D9=83=D9=88=D9=86=D8=AC=D8=B1=D8=B3
=D8=A7=D9=84=D8=A3=D9=85=D8=B1=D9=8A=D9=83=D9=8A </span></b><b><span style=
=3D"font-size:20pt"></span></b></font></font></p><font color=3D"#000000" fa=
ce=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span style=3D"font-size:20pt"><font color=3D"#000000"><font face=3D"Time=
s New Roman"><span>=C2=A0</span><span lang=3D"AR-SA" dir=3D"RTL">=D9=84=D9=
=85=D8=AA=D8=A7=D8=A8=D8=B9=D8=A9 =D9=86=D8=B4=D8=A7=D8=B7=D8=A7=D8=AA =D8=
=BA=D8=B3=D9=84 =D8=A7=D9=84=D8=A3=D9=85=D9=88=D8=A7=D9=84 =D9=88=D9=86=D8=
=B4=D8=A7=D8=B7=D8=A7=D8=AA</span></font></font></span></b></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font face=3D"Times New Roman"><b><span style=3D"color:rgb(84,141,212);font-=
size:10pt"><span>=C2=A0</span></span></b><b><span style=3D"color:red;font-s=
ize:10pt"></span></b></font></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span lang=3D"AR-SA" style=3D"color:red;font-size:18pt" dir=3D"RTL"><font=
 face=3D"Times New Roman">=D8=A7=D9=84=D8=B3=D8=B9=D9=88=D8=AF=D9=8A =D9=85=
=D8=B9=D9=86 =D8=B9=D8=A8=D8=AF=D8=A7=D9=84=D9=88=D8=A7=D8=AD=D8=AF =D8=A7=
=D9=84=D8=B5=D8=A7=D9=86=D8=B9</font></span></b></p><font color=3D"#000000"=
 face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span dir=3D"LTR"></span><span dir=3D"LTR"></span><b><span style=3D"color:re=
d;font-size:10pt"><span dir=3D"LTR"></span><span dir=3D"LTR"></span><font f=
ace=3D"Times New Roman"><span>=C2=A0 </span></font></span></b></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span lang=3D"AR-SA" style=3D"font-size:18pt" dir=3D"RTL"><font face=3D"T=
imes New Roman"><font color=3D"#000000">=D9=85=D8=A7=D9=84=D9=83 =D9=85=D8=
=B3=D8=AA=D8=B4=D9=81=D9=89<span>=C2=A0
</span>=D9=88=D8=B4=D8=B1=D9=83=D8=A9 =D8=B3=D8=B9=D8=AF <span>=C2=A0</span=
>=D9=88=D9=85=D8=AF=D8=A7=D8=B1=D8=B3 =D8=B3=D8=B9=D8=AF</font><u><span sty=
le=3D"color:red"> =D8=A8=D8=A7=D9=84=D9=85=D9=86=D8=B7=D9=82=D8=A9 =D8=A7=
=D9=84=D8=B4=D8=B1=D9=82=D9=8A=D8=A9 =D8=A8=D8=A7=D9=84=D8=B3=D8=B9=D9=88=
=D8=AF=D9=8A=D8=A9</span></u><font color=3D"#000000"> <span>=C2=A0</span><s=
pan>=C2=A0</span>=D9=88=D8=B1=D8=A6=D9=8A=D8=B3
=D9=85=D8=AC=D9=84=D8=B3 =D8=A7=D8=AF=D8=A7=D8=B1=D8=A9 =D8=A8=D9=86=D9=83 =
=D8=A7=D9=88=D8=A7=D9=84 </font><u><span style=3D"color:red">=D8=A7=D9=84=
=D8=A8=D8=AD=D8=B1=D9=8A=D9=86=D9=8A</span></u></font></span></b></p><font =
color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span dir=3D"LTR"></span><span dir=3D"LTR"></span><b><span style=3D"font-siz=
e:18pt"><span dir=3D"LTR"></span><span dir=3D"LTR"></span><font color=3D"#0=
00000"><font face=3D"Times New Roman"><span>=C2=A0 </span></font></font></s=
pan></b></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font color=3D"#000000"><font face=3D"Times New Roman"><b><span lang=3D"AR-S=
A" style=3D"font-size:16pt" dir=3D"RTL">=D9=85=D8=AA=D8=B1=D8=AC=D9=85 =D8=
=A8=D8=A7=D9=84=D9=84=D8=BA=D8=A9 =D8=A7=D9=84=D8=B9=D8=B1=D8=A8=D9=8A=D8=
=A9</span></b><b><span style=3D"color:rgb(84,141,212);font-size:16pt"></spa=
n></b></font></font></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font color=3D"#000000" face=3D"Times New Roman" size=3D"3">=C2=A0</font></p=
><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
a href=3D"http://www.youtube.com/watch?v=3DmIBNnQvhU8s" target=3D"_blank"><=
font color=3D"#0000ff" face=3D"Times New Roman" size=3D"3">http://www.youtu=
be.com/watch?v=3DmIBNnQvhU8s</font></a></p><span class=3D"m_792455967930549=
5246m_8435142519734354064m_3451544980988140958m_-1532158172797199067m_-9155=
773050320362118m_6265361273624342286m_783608758677954300m_-4832258295562669=
429m_368574944900017359m_5311410579910600017m_-1028007182771502888m_-555684=
7785940785557m_5527881038400828473m_5296927896078032125m_331595612311581485=
1m_2155004414972708741m_821697035496247047m_-3233976008921745967m_305747110=
2364545636m_9126931093877112352m_1381257612561390782m_-3872211874622193804m=
_-1237601941391120104m_2982253326279970612m_6802884895511019645m_5971219624=
204820519m_8734996814117936651m_-6817322807802538732m_5119347417685918848m_=
-7550710920388845216HOEnZb"><font color=3D"#888888">

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font color=3D"#000000" face=3D"Times New Roman" size=3D"3">=C2=A0</font></p=
><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font color=3D"#000000" face=3D"Times New Roman" size=3D"3">=C2=A0</font></p=
><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font></font></span></div><span class=3D"m_7924559679305495246m_8435142519=
734354064m_3451544980988140958m_-1532158172797199067m_-9155773050320362118m=
_6265361273624342286m_783608758677954300m_-4832258295562669429m_36857494490=
0017359m_5311410579910600017m_-1028007182771502888m_-5556847785940785557m_5=
527881038400828473m_5296927896078032125m_3315956123115814851m_2155004414972=
708741m_821697035496247047m_-3233976008921745967m_3057471102364545636m_9126=
931093877112352m_1381257612561390782m_-3872211874622193804m_-12376019413911=
20104m_2982253326279970612m_6802884895511019645m_5971219624204820519m_87349=
96814117936651m_-6817322807802538732m_5119347417685918848m_-755071092038884=
5216HOEnZb"><font color=3D"#888888">
</font></span></div><span class=3D"m_7924559679305495246m_84351425197343540=
64m_3451544980988140958m_-1532158172797199067m_-9155773050320362118m_626536=
1273624342286m_783608758677954300m_-4832258295562669429m_368574944900017359=
m_5311410579910600017m_-1028007182771502888m_-5556847785940785557m_55278810=
38400828473m_5296927896078032125m_3315956123115814851m_2155004414972708741m=
_821697035496247047m_-3233976008921745967m_3057471102364545636m_91269310938=
77112352m_1381257612561390782m_-3872211874622193804m_-1237601941391120104m_=
2982253326279970612m_6802884895511019645m_5971219624204820519m_873499681411=
7936651m_-6817322807802538732m_5119347417685918848m_-7550710920388845216HOE=
nZb"><font color=3D"#888888"><br></font></span></div><span class=3D"m_79245=
59679305495246m_8435142519734354064m_3451544980988140958m_-1532158172797199=
067m_-9155773050320362118m_6265361273624342286m_783608758677954300m_-483225=
8295562669429m_368574944900017359m_5311410579910600017m_-102800718277150288=
8m_-5556847785940785557m_5527881038400828473m_5296927896078032125m_33159561=
23115814851m_2155004414972708741m_821697035496247047m_-3233976008921745967m=
_3057471102364545636m_9126931093877112352m_1381257612561390782m_-3872211874=
622193804m_-1237601941391120104m_2982253326279970612m_6802884895511019645m_=
5971219624204820519m_8734996814117936651m_-6817322807802538732m_51193474176=
85918848m_-7550710920388845216HOEnZb"><font color=3D"#888888">
</font></span></div><span class=3D"m_7924559679305495246m_84351425197343540=
64m_3451544980988140958m_-1532158172797199067m_-9155773050320362118m_626536=
1273624342286m_783608758677954300m_-4832258295562669429m_368574944900017359=
m_5311410579910600017m_-1028007182771502888m_-5556847785940785557m_55278810=
38400828473m_5296927896078032125m_3315956123115814851m_2155004414972708741m=
_821697035496247047m_-3233976008921745967m_3057471102364545636m_91269310938=
77112352m_1381257612561390782m_-3872211874622193804m_-1237601941391120104m_=
2982253326279970612m_6802884895511019645m_5971219624204820519m_873499681411=
7936651m_-6817322807802538732m_5119347417685918848m_-7550710920388845216HOE=
nZb"><font color=3D"#888888"><br></font></span></div><span class=3D"m_79245=
59679305495246m_8435142519734354064m_3451544980988140958m_-1532158172797199=
067m_-9155773050320362118m_6265361273624342286m_783608758677954300m_-483225=
8295562669429m_368574944900017359m_5311410579910600017m_-102800718277150288=
8m_-5556847785940785557m_5527881038400828473m_5296927896078032125m_33159561=
23115814851m_2155004414972708741m_821697035496247047m_-3233976008921745967m=
_3057471102364545636m_9126931093877112352m_1381257612561390782m_-3872211874=
622193804m_-1237601941391120104m_2982253326279970612m_6802884895511019645m_=
5971219624204820519m_8734996814117936651m_-6817322807802538732m_51193474176=
85918848m_-7550710920388845216HOEnZb"><font color=3D"#888888">
</font></span></div><span class=3D"m_7924559679305495246m_84351425197343540=
64m_3451544980988140958m_-1532158172797199067m_-9155773050320362118m_626536=
1273624342286m_783608758677954300m_-4832258295562669429m_368574944900017359=
m_5311410579910600017m_-1028007182771502888m_-5556847785940785557m_55278810=
38400828473m_5296927896078032125m_3315956123115814851m_2155004414972708741m=
_821697035496247047m_-3233976008921745967m_3057471102364545636m_91269310938=
77112352m_1381257612561390782m_-3872211874622193804m_-1237601941391120104m_=
2982253326279970612m_6802884895511019645m_5971219624204820519m_873499681411=
7936651m_-6817322807802538732m_5119347417685918848m_-7550710920388845216HOE=
nZb"><font color=3D"#888888"><br></font></span></div><span class=3D"m_79245=
59679305495246m_8435142519734354064m_3451544980988140958m_-1532158172797199=
067m_-9155773050320362118m_6265361273624342286m_783608758677954300m_-483225=
8295562669429m_368574944900017359m_5311410579910600017m_-102800718277150288=
8m_-5556847785940785557m_5527881038400828473m_5296927896078032125m_33159561=
23115814851m_2155004414972708741m_821697035496247047m_-3233976008921745967m=
_3057471102364545636m_9126931093877112352m_1381257612561390782m_-3872211874=
622193804m_-1237601941391120104m_2982253326279970612m_6802884895511019645m_=
5971219624204820519m_8734996814117936651m_-6817322807802538732m_51193474176=
85918848m_-7550710920388845216HOEnZb"><font color=3D"#888888">
</font></span></div></div></div><span class=3D"m_7924559679305495246m_84351=
42519734354064m_3451544980988140958m_-1532158172797199067m_-915577305032036=
2118m_6265361273624342286m_783608758677954300m_-4832258295562669429m_368574=
944900017359m_5311410579910600017m_-1028007182771502888m_-55568477859407855=
57m_5527881038400828473m_5296927896078032125m_3315956123115814851m_21550044=
14972708741m_821697035496247047m_-3233976008921745967m_3057471102364545636m=
_9126931093877112352m_1381257612561390782m_-3872211874622193804m_-123760194=
1391120104m_2982253326279970612m_6802884895511019645m_5971219624204820519m_=
8734996814117936651m_-6817322807802538732m_5119347417685918848m_-7550710920=
388845216HOEnZb"><font color=3D"#888888"><br></font></span></div><span clas=
s=3D"m_7924559679305495246m_8435142519734354064m_3451544980988140958m_-1532=
158172797199067m_-9155773050320362118m_6265361273624342286m_783608758677954=
300m_-4832258295562669429m_368574944900017359m_5311410579910600017m_-102800=
7182771502888m_-5556847785940785557m_5527881038400828473m_52969278960780321=
25m_3315956123115814851m_2155004414972708741m_821697035496247047m_-32339760=
08921745967m_3057471102364545636m_9126931093877112352m_1381257612561390782m=
_-3872211874622193804m_-1237601941391120104m_2982253326279970612m_680288489=
5511019645m_5971219624204820519m_8734996814117936651m_-6817322807802538732m=
_5119347417685918848m_-7550710920388845216HOEnZb"><font color=3D"#888888">
</font></span></div></div></div><span class=3D"m_7924559679305495246m_84351=
42519734354064m_3451544980988140958m_-1532158172797199067m_-915577305032036=
2118m_6265361273624342286m_783608758677954300m_-4832258295562669429m_368574=
944900017359m_5311410579910600017m_-1028007182771502888m_-55568477859407855=
57m_5527881038400828473m_5296927896078032125m_3315956123115814851m_21550044=
14972708741m_821697035496247047m_-3233976008921745967m_3057471102364545636m=
_9126931093877112352m_1381257612561390782m_-3872211874622193804m_-123760194=
1391120104m_2982253326279970612m_6802884895511019645m_5971219624204820519m_=
8734996814117936651m_-6817322807802538732m_5119347417685918848m_-7550710920=
388845216HOEnZb"><font color=3D"#888888"><br></font></span></div><span clas=
s=3D"m_7924559679305495246m_8435142519734354064m_3451544980988140958m_-1532=
158172797199067m_-9155773050320362118m_6265361273624342286m_783608758677954=
300m_-4832258295562669429m_368574944900017359m_5311410579910600017m_-102800=
7182771502888m_-5556847785940785557m_5527881038400828473m_52969278960780321=
25m_3315956123115814851m_2155004414972708741m_821697035496247047m_-32339760=
08921745967m_3057471102364545636m_9126931093877112352m_1381257612561390782m=
_-3872211874622193804m_-1237601941391120104m_2982253326279970612m_680288489=
5511019645m_5971219624204820519m_8734996814117936651m_-6817322807802538732m=
_5119347417685918848m_-7550710920388845216HOEnZb"><font color=3D"#888888">
</font></span></div></div></div><span class=3D"m_7924559679305495246m_84351=
42519734354064m_3451544980988140958m_-1532158172797199067m_-915577305032036=
2118m_6265361273624342286m_783608758677954300m_-4832258295562669429m_368574=
944900017359m_5311410579910600017m_-1028007182771502888m_-55568477859407855=
57m_5527881038400828473m_5296927896078032125m_3315956123115814851m_21550044=
14972708741m_821697035496247047m_-3233976008921745967m_3057471102364545636m=
_9126931093877112352m_1381257612561390782m_-3872211874622193804m_-123760194=
1391120104m_2982253326279970612m_6802884895511019645m_5971219624204820519m_=
8734996814117936651m_-6817322807802538732m_5119347417685918848m_-7550710920=
388845216HOEnZb"><font color=3D"#888888"><br></font></span></div><span clas=
s=3D"m_7924559679305495246m_8435142519734354064m_3451544980988140958m_-1532=
158172797199067m_-9155773050320362118m_6265361273624342286m_783608758677954=
300m_-4832258295562669429m_368574944900017359m_5311410579910600017m_-102800=
7182771502888m_-5556847785940785557m_5527881038400828473m_52969278960780321=
25m_3315956123115814851m_2155004414972708741m_821697035496247047m_-32339760=
08921745967m_3057471102364545636m_9126931093877112352m_1381257612561390782m=
_-3872211874622193804m_-1237601941391120104m_2982253326279970612m_680288489=
5511019645m_5971219624204820519m_8734996814117936651m_-6817322807802538732m=
_5119347417685918848m_-7550710920388845216HOEnZb"><font color=3D"#888888">
</font></span></div></div></div><span class=3D"m_7924559679305495246m_84351=
42519734354064m_3451544980988140958m_-1532158172797199067m_-915577305032036=
2118m_6265361273624342286m_783608758677954300m_-4832258295562669429m_368574=
944900017359m_5311410579910600017m_-1028007182771502888m_-55568477859407855=
57m_5527881038400828473m_5296927896078032125m_3315956123115814851m_21550044=
14972708741m_821697035496247047m_-3233976008921745967m_3057471102364545636m=
_9126931093877112352m_1381257612561390782m_-3872211874622193804m_-123760194=
1391120104m_2982253326279970612m_6802884895511019645m_5971219624204820519m_=
8734996814117936651m_-6817322807802538732m_5119347417685918848m_-7550710920=
388845216HOEnZb"><font color=3D"#888888"><br></font></span></div><span clas=
s=3D"m_7924559679305495246m_8435142519734354064m_3451544980988140958m_-1532=
158172797199067m_-9155773050320362118m_6265361273624342286m_783608758677954=
300m_-4832258295562669429m_368574944900017359m_5311410579910600017m_-102800=
7182771502888m_-5556847785940785557m_5527881038400828473m_52969278960780321=
25m_3315956123115814851m_2155004414972708741m_821697035496247047m_-32339760=
08921745967m_3057471102364545636m_9126931093877112352m_1381257612561390782m=
_-3872211874622193804m_-1237601941391120104m_2982253326279970612m_680288489=
5511019645m_5971219624204820519m_8734996814117936651m_-6817322807802538732m=
_5119347417685918848m_-7550710920388845216HOEnZb"><font color=3D"#888888">
</font></span></div></div></div><span class=3D"m_7924559679305495246m_84351=
42519734354064m_3451544980988140958m_-1532158172797199067m_-915577305032036=
2118m_6265361273624342286m_783608758677954300m_-4832258295562669429m_368574=
944900017359m_5311410579910600017m_-1028007182771502888m_-55568477859407855=
57m_5527881038400828473m_5296927896078032125m_3315956123115814851m_21550044=
14972708741m_821697035496247047m_-3233976008921745967m_3057471102364545636m=
_9126931093877112352m_1381257612561390782m_-3872211874622193804m_-123760194=
1391120104m_2982253326279970612m_6802884895511019645m_5971219624204820519m_=
8734996814117936651m_-6817322807802538732m_5119347417685918848m_-7550710920=
388845216HOEnZb"><font color=3D"#888888"><br></font></span></div><span clas=
s=3D"m_7924559679305495246m_8435142519734354064m_3451544980988140958m_-1532=
158172797199067m_-9155773050320362118m_6265361273624342286m_783608758677954=
300m_-4832258295562669429m_368574944900017359m_5311410579910600017m_-102800=
7182771502888m_-5556847785940785557m_5527881038400828473m_52969278960780321=
25m_3315956123115814851m_2155004414972708741m_821697035496247047m_-32339760=
08921745967m_3057471102364545636m_9126931093877112352m_1381257612561390782m=
_-3872211874622193804m_-1237601941391120104m_2982253326279970612m_680288489=
5511019645m_5971219624204820519m_8734996814117936651m_-6817322807802538732m=
_5119347417685918848m_-7550710920388845216HOEnZb"><font color=3D"#888888">

<p></p>

</font></span><br></div></div>
</div></div></div><br></div>
</div><br></div>
</div><br></div>
</div><br></div>
</div><br></div>
</div><br></div>
</div><br></div>
</div></div></div><br></div>
</div><br></div>
</div><br></div>
</div><br></div>
</div></div></div><br></div>
</div><br></div>
</div><br></div>
</div><br></div>
</div><br></div>
</div><br></div>
</div><br></div>
</div><br></div>
</div><br></div>
</div></div></div><br></div>
</div><br></div>
</div><br></div>
</div><br></div>
</div><br></div>
</div></div></div><br></div>
</div></div></div><br></div>
</div><br></div>
</div></div>
</div></div>

--00000000000055c30605798d734d--
--00000000000055c30c05798d734f
Content-Type: image/jpeg; 
	name="=?UTF-8?B?2YXYudmGINin2YTYtdin2YbYuSDZhdi5INij2K3YryDYudmE2YXYp9ihINin2YTYr9mK2YYuanBn?="
Content-Disposition: attachment; 
	filename="=?UTF-8?B?2YXYudmGINin2YTYtdin2YbYuSDZhdi5INij2K3YryDYudmE2YXYp9ihINin2YTYr9mK2YYuanBn?="
Content-Transfer-Encoding: base64
Content-ID: <f_hhot99uk0>
X-Attachment-Id: f_hhot99uk0

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
--00000000000055c30c05798d734f--

