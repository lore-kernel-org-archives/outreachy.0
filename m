Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519648BED
	for <outreachy@lists.linux.dev>; Wed,  8 Mar 2023 18:40:34 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id l7-20020a05600c4f0700b003e79fa98ce1so1736707wmq.2
        for <outreachy@lists.linux.dev>; Wed, 08 Mar 2023 10:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678300832;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pHBLKfyNDf7v5atB/zk7idS+Ac+6dUm1VyIS86e0HUM=;
        b=QEbP5GGR2GbpC012XZs5DJixrTlP5VXeoh2nYUhkeBkChpeuHIP4s2aTtHkuUTKZZK
         UeiB888AXZKx0L1fCd/DB5ZHGYP2nLdTrcPx+2zyKn9vK2k9qQE/TKJM5EYCRRv/PxP8
         irHcGnrbNRNpWiQy/4OCA7Q52rhg787jUCFyV+zBElJ29WO5+2CcIXZfYSj9nsBljWJp
         w9+q3ctgWksRHHBmgKdz1DHmXKK1KNQyelSW62gVRylBqYi25GEnUvZn1vXSSjTiuUPq
         13t0oehDpi13YJg6dGJIEalEwqWtFPDRGUy4TopTCx335I3MgzYbJrHrPOj9gYBJaPMZ
         x29Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678300832;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pHBLKfyNDf7v5atB/zk7idS+Ac+6dUm1VyIS86e0HUM=;
        b=pvCfUnR2k5zrtDpqm1IElFdsBxVqumiH4gs1OrjmKH14ViSstNnTMHdiFtdV+Elwgy
         ax3wFrwrjx/cNudEIMa1+8VxC1JbIga0xsVFnqV7P8lXt0J11dgQNK4M3FXTL1Tu2PAH
         TN2SsvH34mUNjA2zsNS2o2GIyCwwNLuh8R4uYWWPTeSHq95+hzZNvEZXKPdtNZaxBgEb
         7btE5yNX2JK0Y6zIHimjGnMwfTJvtiujyfzWuUHbH/mVYfyytaYKNiR//dutchTzRrFs
         1FiCSMXpj0XUrH3yBNHQDL2aXhMmL3JFYeAq23wSyWKjnGrMvCS+aMDkkoDvJMYxJlVl
         +YiA==
X-Gm-Message-State: AO0yUKXfm9qlnTPksNvBxMnaHQsxGiXJv2brOkNgw6caW2wlGzv0LEDw
	Ye/D87IA2+3zNW8aRUM+MNk=
X-Google-Smtp-Source: AK7set9NhED+nyR3cG13Jyca6texBE6ElQa/EriGUqd18IWhKdOHidL7TDS9Fxk3sjeF1J/Bh2mPDQ==
X-Received: by 2002:a05:600c:4591:b0:3da:2a78:d7a4 with SMTP id r17-20020a05600c459100b003da2a78d7a4mr16615512wmo.21.1678300832256;
        Wed, 08 Mar 2023 10:40:32 -0800 (PST)
Received: from suse.localnet (host-95-252-162-80.retail.telecomitalia.it. [95.252.162.80])
        by smtp.gmail.com with ESMTPSA id o13-20020a5d670d000000b002c8476dde7asm15951190wru.114.2023.03.08.10.40.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 10:40:31 -0800 (PST)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, Ira Weiny <ira.weiny@intel.com>,
 outreachy@lists.linux.dev
Subject: Re: Introductory message
Date: Wed, 08 Mar 2023 19:40:30 +0100
Message-ID: <6882066.18pcnM708K@suse>
In-Reply-To: <6408c23d58ec5_f3f4a294e1@iweiny-mobl.notmuch>
References:
 <20230308114122.GA312977@ubuntu>
 <12ef38a-fd4c-947c-4ea3-a641ef5b1310@inria.fr>
 <6408c23d58ec5_f3f4a294e1@iweiny-mobl.notmuch>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On mercoled=EC 8 marzo 2023 18:13:33 CET Ira Weiny wrote:
> Julia Lawall wrote:
> > On Wed, 8 Mar 2023, Sumitra Sharma wrote:
> > > Hi I am Sumitra Sharma, an outreachy applicant. This is my first time
> > > applying to outreachy and linux-kernel. I am currently working on
> > > setting up the environment. I observed that building the kernel i.e.
> > > running "make -j2" command itself is taking a lot of time. I would
> > > appreciate some suggestions on it.
> >=20
> > I think it would take a lot of time...
>=20
> Also:
>=20
> -j is an option which chooses how many threads to build in parallel.
>=20
> If you have enough cores on your machine you could increase '2' to
> something larger.
>=20

Sumitra,

That "something larger" can be calculated with a rule of thumb and then=20
adapted to your necessities...

Look at /proc/cpuinfo if you don't know how many cores you have in your=20
system...

# cat /proc/cpuinfo | grep processor
processor: 0
processor: 1
processor: 2
processor: 3
processor: 4
processor: 5
processor: 6
processor: 7
processor: 8
processor: 9
processor: 10
processor: 11

The output shows that I'm using a 12 core SMT system (https://
en.wikipedia.org/wiki/Simultaneous_multithreading).

So "-j12" is my usual choice for building a kernel in the host, minus the=20
number of SMT cores reserved for running VMs.

Thanks,

=46abio
=20



