Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75448BF3
	for <outreachy@lists.linux.dev>; Wed,  8 Mar 2023 19:00:59 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id p23-20020a05600c1d9700b003ead4835046so2616539wms.0
        for <outreachy@lists.linux.dev>; Wed, 08 Mar 2023 11:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678302058;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nvk0sO+cajeS6LoeyFcSPYPHDIKCM/2x8damNQYOFBk=;
        b=Ii/DBX2JxTTZX+WA/QBAN6rir29NVBXiL9WrbpUI8qXsJ1BaL6G3+DT4VMRD0K1/2R
         k2hq+iN4wNQpa1GSLAQqejsAIJiCoq2gLK11q5WKuHueml08o6csfPoDpSbEI5dex++k
         lQGF5Vc9XqzrSlbaAcpUO/uPNifS66OugMUNwlC1xZrdWbW/utDOw9n2wxvP0xanqa+h
         QAlofN9upnWWCCU4YYTb4cL6Pzh+0WqQwSfmHrDJUWuXorAjD5818Ue7O5HgaL9CNadQ
         3XAkouhrawbhp07VBibobEQ2df1b+669ELjlle/CQZ/JVZ/0OLl8urI6w5F0UebnOCNC
         PDDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678302058;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nvk0sO+cajeS6LoeyFcSPYPHDIKCM/2x8damNQYOFBk=;
        b=CoUudtJlSiZa0zyofRwjCaBZF/QeTeu9PMNjvcvJMZRHcKKXsaeMB012mSeyVx4EqP
         5RwXpZ/4xgmWAOIJw2dSfVD1eb5KJFIX5LZYmqN+4VJwINvm0IJY78Fg3DpUCTAS0mxJ
         nfXsTCsdPWT12nuevg+d960fQeGqj65k7x4y2HJ3clojVSdPbxBSDTNOB/vUr0qDDf8D
         +5eSibLoyXynLqlwIiVa+g29b2tWM7mpnoEz8j0B3Ui6KBa9AJ0AGSaCO6RvDgOwAXUt
         LYzilR2VtRyB/dPzmuus+CkhBwBYfjWS06C6A4aZamlnrLdzeVkTMXP+hN6Q4/OH8jy9
         pFdg==
X-Gm-Message-State: AO0yUKUlGjryg9pEDbIel9EDaERBX9DW8wBNSmMNAQSe0azrEWJ8F5ca
	3nZ4R/cKdqCOaUxgVWfBmn8=
X-Google-Smtp-Source: AK7set8/r4fIJW2HiucSn/OD4uMh9UrOXsW7XV3LmtRBY1y6ewPQdR5zsB2f56Niyrf6nqS9UqAq+Q==
X-Received: by 2002:a05:600c:4ecb:b0:3eb:3148:a1b7 with SMTP id g11-20020a05600c4ecb00b003eb3148a1b7mr16963645wmq.12.1678302058000;
        Wed, 08 Mar 2023 11:00:58 -0800 (PST)
Received: from suse.localnet (host-95-252-162-80.retail.telecomitalia.it. [95.252.162.80])
        by smtp.gmail.com with ESMTPSA id l5-20020a05600c4f0500b003e00c453447sm228441wmq.48.2023.03.08.11.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 11:00:57 -0800 (PST)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev,
 Deepak R Varma <drv@mailo.com>
Subject: Re: Help to setup enviornment
Date: Wed, 08 Mar 2023 20:00:55 +0100
Message-ID: <5365771.29KlJPOoH8@suse>
In-Reply-To: <dd924cf4-ddd6-45aa-292d-5762b769ca22@inria.fr>
References:
 <20230308171509.GA4056@ubuntu>
 <dd924cf4-ddd6-45aa-292d-5762b769ca22@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On mercoled=EC 8 marzo 2023 18:27:39 CET Julia Lawall wrote:
> On Wed, 8 Mar 2023, Sumitra Sharma wrote:
> > Thank you Julia for your response. I followed your instructions and  ge=
t=20
rid
> > of the earlier mentioned error. But on running the command "make -j2" it
> > shows the error: ##
> > Killed
> > make[1]: *** [scripts/Makefile.vmlinux_o:61: vmlinux.o] Error 137
> > make[1]: *** Deleting file 'vmlinux.o'
> > make: *** [Makefile:1231: vmlinux_o] Error 2
> > ##
> > As per the system logs, the process is killed due to insufficient memor=
y.
> > I am running the linux on windows machine in VMPlayer and I have provid=
ed
> > 4.6 GB of RAM to this machine. My systems RAM has a limit of 8 GB. I wo=
uld
> > appreciate some more help in it. Thank you.
> Maybe just add more memory?  6 instead of 4?
>=20
> julia

I'm pretty sure that Windows 10/11 won't run with less than 4GB left in the=
=20
host.

Anyway, it's not clear whether we are talking about the lack of RAM (and wh=
ere=20
Sumitra sees too few memory... in the Linux VM or in the Windows host?) or=
=20
about Storage?

@Sumitra, I wasn't aware of you running Linux in a VM, so my previous messa=
ge=20
may have confused you. I was assuming that you build in a Linux host and ru=
n=20
(at least a Linux VM for tests.

Now your set-up is clear: Linux on Windows.

Can you please run `df -h` on your Linux VM and post the output? In the=20
meantime post your `cat /proc/meminfo`. As said I am not sure about what ki=
nd=20
of memory you are talking about. Let us see the output.

Thanks,

=46abio




