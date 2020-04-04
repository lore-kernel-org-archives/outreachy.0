X-GM-THRID: 6811652718511259648
X-Received: by 2002:a05:6808:4e:: with SMTP id v14mr8256427oic.70.1586043128025;
        Sat, 04 Apr 2020 16:32:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:b814:: with SMTP id g20ls1364289oop.2.gmail; Sat, 04 Apr
 2020 16:32:06 -0700 (PDT)
X-Google-Smtp-Source: APiQypJmmIjyAZxMhoqY3XE0zbHTEGgwbBmr4hQ8n1JArf1GO/uMgH+LW3qYBXnWBotbrJ8jPnzg
X-Received: by 2002:a4a:7355:: with SMTP id e21mr11803571oof.31.1586043126613;
        Sat, 04 Apr 2020 16:32:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586043126; cv=none;
        d=google.com; s=arc-20160816;
        b=VTF2UGdrAeU6CRMFsyld/IpyG/QfBhCc++t0qM8NnfvX0ZqhCAjr3+3kJZrqxRHToY
         yjtlAmVQ0nv3rHRaSFuZR0sEzfWPZ3Za4/XMQ6dTMdYct0lmZD7iRz+AIldFVCpjE8mI
         PcMgZiEV13BvGL1cCPV0s3fqUtojayCUvkrWCc3OB6ep04rg8AItuU9gKNfAgD9znenW
         M3UmuvFCVmPDd3Db9BGmrQO55J2uqqmBM3qK2Fa+NDIa297GSQjBmRGpcrnNHopYQO/w
         KWwmPpCfcR4/9l70n+AB2+QBdSd7wqFwzKROna20rYMfdAZD6FV8FUdRfwA24RSKFJuD
         SV8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=QHUBtd4ch5BOVDfpx5fTPNHWeidRNC+GVwc7+kLvhYo=;
        b=ppPUBt5TvmkOs3vl3asVuRmV+1Dr8ca2R7LZVbwmFRVqrN38DNOCtR7gaiG+o4RcTc
         k+BpVaCpAbkMNPnr6fp66Jx6CNgvPmyxHqKzA2rFkvtk0G4RBuebyBWsbxeXwtolkuum
         1zzh6HdqDh8Am6KTwmnH8UwOEyuEQSMnXSz654G7s/MGFo8BWQtcKjH/O5s0iUvfxbmV
         TPvRoXkutNi8OuxuRKoj7xUsGxPstASuA0xuK8XTCkL/8sWzH3EoSWlCIW4r7KnnBeXV
         RRuqwYbOWoWvUcVlKrHQ/j5GuTRvr9Icd7WP22r35tqvqZ8/fv89/p0PEXcihUlA5FyU
         YrlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=N1yokv1t;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id k23si790494ooa.0.2020.04.04.16.32.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Apr 2020 16:32:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=N1yokv1t;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1586043125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QHUBtd4ch5BOVDfpx5fTPNHWeidRNC+GVwc7+kLvhYo=;
	b=N1yokv1tFkELD579d+eUTtmriqF02N/9AboST77ZsXl0fuFX+Bq28k5vwYEOdN2vuo0EDZ
	VG8iS8CTZ/PrdA4UtTBzhDX0lvw1QNSYLKe/pNOgRNjD4DD7lvrTeISBojcVeBZElynq1+
	fD+3LsV8K2RdJyht/cY7dKEkEr0SPSM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-261-9xx-t-SsOLWHKvrTdbo-eg-1; Sat, 04 Apr 2020 19:32:02 -0400
X-MC-Unique: 9xx-t-SsOLWHKvrTdbo-eg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 82AE418FE860;
	Sat,  4 Apr 2020 23:32:00 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C4505DA7B;
	Sat,  4 Apr 2020 23:31:57 +0000 (UTC)
Date: Sun, 5 Apr 2020 01:31:52 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 elder@kernel.org, johan@kernel.org, mgreer@animalcreek.com,
 vaibhav.sr@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: quoted string
 split across lines
Message-ID: <20200405013152.2593e3ab@elisabeth>
In-Reply-To: <20200404005122.GA6315@siyah2>
References: <20200404005122.GA6315@siyah2>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

G=C3=B6k=C3=A7e,

On Sat, 4 Apr 2020 03:51:22 +0300
Gokce Kuler <gokcekuler@gmail.com> wrote:

> Quoted string merge to upper line.
>=20
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/greybus/audio_manager_sysfs.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/drivers/staging/greybus/audio_manager_sysfs.c b/drivers/stag=
ing/greybus/audio_manager_sysfs.c
> index ab882cc..d7216e9 100644
> --- a/drivers/staging/greybus/audio_manager_sysfs.c
> +++ b/drivers/staging/greybus/audio_manager_sysfs.c
> @@ -18,8 +18,7 @@ static ssize_t manager_sysfs_add_store(struct kobject *=
kobj,
>  =09struct gb_audio_manager_module_descriptor desc =3D { {0} };
> =20
>  =09int num =3D sscanf(buf,
> -=09=09=09"name=3D%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s "
> -=09=09=09"vid=3D%d pid=3D%d intf_id=3D%d i/p devices=3D0x%X o/p devices=
=3D0x%X",
> +=09=09=09"name=3D%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s vid=3D%d =
pid=3D%d intf_id=3D%d i/p devices=3D0x%X o/p devices=3D0x%X",

Is this reported by...? checkpatch? Because I don't see the problem
with a sscanf().

That is, the rationale for keeping quoted strings unwrapped is that
they end up in kernel logs, and one might want to find the equivalent
point in the sources. But with a sscanf(), I'm not sure we need it.

--=20
Stefano


