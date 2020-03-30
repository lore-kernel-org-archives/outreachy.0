X-GM-THRID: 6808898651661795328
X-Received: by 2002:a02:cb4b:: with SMTP id k11mr8827091jap.115.1585559588010;
        Mon, 30 Mar 2020 02:13:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:e87:: with SMTP id p7ls2229578jas.6.gmail; Mon, 30
 Mar 2020 02:13:06 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtHlil8xjAekB+3JWVsSIn2+rPpNyF3mi7Ukx1CsXyO2zi9ACrOgxXSoU+A+1VIkvoxvgxu
X-Received: by 2002:a05:6638:506:: with SMTP id i6mr1925431jar.59.1585559586665;
        Mon, 30 Mar 2020 02:13:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585559586; cv=none;
        d=google.com; s=arc-20160816;
        b=MftJIL1/YZfiM+UShaqNp7+kZ6tYBRfqnw1KPnOxw0vCB3vOGVb1wGTd3u6XPoC3Af
         pTRQ2fKDSXYxSwwTAdqKcoNvDpcab4iW2aHBe7AYae3958Q2M9Yny+3lQJ47Xnphkm0E
         rXeIvKneQeqdjKgACXIWnPBVU9xRlBQIK4lif0jjIAPmmXHcHyo9olZIQMmPOpo4vUc9
         ZYYdn5kmKOiJEyKM7iW3JDfoDQtoURf4loF0a4FZKHAJiRz2wCxHEKO+RSTFJVcklZb2
         2s4awhI1pslEymuuvnmolqA6LSAp41ME36tfiJgRUgnOiAglsI3grno3nD2iEAwhl1hz
         ZWZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=3fm/RyRA4eEG+XzycPhu7fTF5Eof5F2/DGa4vJMbMU0=;
        b=TT2l8ItkCAYPBTnnwMyvNquEO/nd+jS69Wk/UOjurHEyO27mJd9JqaDqJBZP1LAdgS
         Py5F3YrOOpnVok2YyDF0vj1OUVQ6vy2DNus8/e+z0kvLcarKhssj8SpYIfDegBvjpTFO
         Dx02+ofijlsmULlr9a/R5aunK2p/wrJLuYxQUe5Dq9QSNHC3NzlNF7AAtJyXWWmQFfIS
         vfwAumh1v4DjnCatcMqkLsbXvarqNgqHzS0QBvE7ueTCHF9dwJFVNLnp7lSGjr5N4raq
         FQEJTt/88KjSBerksvJjjozFpxoXTFVY/jVQvJ8SQtya8ucNjnNreBgwXt26T69VlmH8
         lSPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="W/EFtvna";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id m8si975521ili.2.2020.03.30.02.13.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 02:13:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="W/EFtvna";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585559586;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3fm/RyRA4eEG+XzycPhu7fTF5Eof5F2/DGa4vJMbMU0=;
	b=W/EFtvnaNzAkofYXOsNFgU5ZhkRVJiXiRauq3b3jzLSoxqqdD9GwYgewaUM5AfRDEHw43W
	B5QMhEW7FmBmmtZozJaeEWij0PZuXtRpioud3VFJ/ptZ0GmtrCRl7xeguM6yv/Kb2wl9NG
	wgou759IAjYFc7c2OljTzvol8T/0j00=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-179-fnZOeJDsNha61jA-xNivcQ-1; Mon, 30 Mar 2020 05:13:01 -0400
X-MC-Unique: fnZOeJDsNha61jA-xNivcQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 33FC218A8C80;
	Mon, 30 Mar 2020 09:13:00 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28EE75DA76;
	Mon, 30 Mar 2020 09:12:57 +0000 (UTC)
Date: Mon, 30 Mar 2020 11:12:51 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH 1/2] staging:
 wlang-ng: Properly align the lines of function call
Message-ID: <20200330111251.1d2e6db6@elisabeth>
In-Reply-To: <20200327144229.19738-2-debsoumyajit100@gmail.com>
References: <20200327144229.19738-1-debsoumyajit100@gmail.com>
	<20200327144229.19738-2-debsoumyajit100@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 27 Mar 2020 20:12:28 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

> Align the lines of function call to improve code readability and to
> adhere to the uniform Linux Kernel coding style.
> Reported by checkpatch.pl
>=20
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 27 +++++++++++++--------------
>  1 file changed, 13 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng=
/cfg80211.c
> index fac38c842ac5..3d17037f954e 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -359,16 +359,15 @@ static int prism2_scan(struct wiphy *wiphy,
>  =09=09freq =3D ieee80211_channel_to_frequency(msg2.dschannel.data,
>  =09=09=09=09=09=09      NL80211_BAND_2GHZ);
>  =09=09bss =3D cfg80211_inform_bss(wiphy,
> -=09=09=09ieee80211_get_channel(wiphy, freq),
> -=09=09=09CFG80211_BSS_FTYPE_UNKNOWN,
> -=09=09=09(const u8 *)&msg2.bssid.data.data,
> -=09=09=09msg2.timestamp.data, msg2.capinfo.data,
> -=09=09=09msg2.beaconperiod.data,
> -=09=09=09ie_buf,
> -=09=09=09ie_len,
> -=09=09=09(msg2.signal.data - 65536) * 100, /* Conversion to signed type =
*/
> -=09=09=09GFP_KERNEL
> -=09=09);
> +=09=09=09=09=09  ieee80211_get_channel(wiphy, freq),
> +=09=09=09=09=09  CFG80211_BSS_FTYPE_UNKNOWN,
> +=09=09=09=09=09  (const u8 *)&msg2.bssid.data.data,
> +=09=09=09=09=09  msg2.timestamp.data, msg2.capinfo.data,
> +=09=09=09=09=09  msg2.beaconperiod.data,
> +=09=09=09=09=09  ie_buf,
> +=09=09=09=09=09  ie_len,
> +=09=09=09=09=09  (msg2.signal.data - 65536) * 100, /* Conversion to sign=
ed type */

So... wait a moment:

- March 21, 17:30 UTC: you ask me on IRC how to fix the checkpatch
  warning you're introducing now. You propose to move the comment on a
  line by itself. I suggest that you write a test program and find out
  if this conversion can be done in another way. You say you will do
  that

- March 27, 10:58 UTC: you ask me on IRC if you can use a cast to "i32".
  I have a d=C3=A9j=C3=A0 vu, can't really remember who asked me this, and
  suggest that you write a test program. You say you will do that

- March 27, 12:12 UTC: you send the same question to this list

- March 27, 14:45 UTC: you send this patch

...why, exactly?

--=20
Stefano


