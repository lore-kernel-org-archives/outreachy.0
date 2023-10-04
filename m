Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCA11BDFB
	for <outreachy@lists.linux.dev>; Wed,  4 Oct 2023 16:27:09 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-27736c2a731so1711464a91.3
        for <outreachy@lists.linux.dev>; Wed, 04 Oct 2023 09:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696436828; x=1697041628; darn=lists.linux.dev;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=00FsUa0v43bP0XoeIcVsy5Ty33JyLuh8lN/IL2FYmew=;
        b=OH4G9ftER1YxxMQNAMJsEC4FjPIPn11k9FzSCSe7aYXrKozqVA0uhqywFraCuoFdac
         wzcErwxcPY5On7TiQRbm5DbUT8VTQcDzv70NHlmueT+j/7PIvuQiKc0gZUBeHVAQiRk+
         YGpLSeeV3G/Fa+vcGibjps8uReYX4FXVAdhMefJvm//MygEf1Qgw0Ny81siVrWbOo08J
         R7VuI/uHzGCDsVO4HQBf2Lo6w5kYYEqPBIsY8pZvt5fJh9Hhd/WsffhmiET7vmUCEYA4
         d+He30xw/M7u/OC5wcw40fyD9IpQSNdzKLdayTEV5IwFJD/Mxfu0exErbx1YzVz6udhk
         vLjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696436828; x=1697041628;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=00FsUa0v43bP0XoeIcVsy5Ty33JyLuh8lN/IL2FYmew=;
        b=caN96JIwG3cuJfbHKpI3/niULR9IGcVlLJFY3JTXtJtFjACGTiCNPaCzHIgOIIdep0
         pclQ6UFI7nMWkURr8ku6jTbFNPPwxm4H8SAmDD5ncS/1as2605BHqYK1VoJ8YLSYdM6F
         RaNbLOsZpxHmhmJZ13M+fGM4lwq/35FTR7mFVOl6prpcGAde3YWcLLGSJUDZsXVFR+b5
         WGmM649Df21C3bLpOsdgIfH13fr8HdiK7UXFnCNVGdXaf23CV5sVo6W9dl5yUV/a7JDI
         P+HH/P+tvIpHlKdfUaIJhPe4im5LRv5t2oVVtfsS9KqA2cKT+NbmYs4u8+oZDK9EVKmn
         ibzg==
X-Gm-Message-State: AOJu0Yydbx4gM9JySlei+J8mrwAwMAAQfwxsjNI0u1Xyrml8D+bFtOgE
	/r2xkqWSN+eG5edUk3vIDzsOuAFl5aveFMru53CJdk3eYfUHxRTmNw0=
X-Google-Smtp-Source: AGHT+IEkRQxLlIMl2oV47cWcZ2LeKhHFP4SnsQNwFBbkPhAUtYynFcPpKvQRIiw+VPEgkWsVGj6MMCnuXy24EgiGyPU=
X-Received: by 2002:a17:90a:c915:b0:277:11b1:d5c4 with SMTP id
 v21-20020a17090ac91500b0027711b1d5c4mr2639814pjt.41.1696436828234; Wed, 04
 Oct 2023 09:27:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com>
 <ZRyTH0WyHd3JJnNv@ashyti-mobl2.lan>
In-Reply-To: <ZRyTH0WyHd3JJnNv@ashyti-mobl2.lan>
From: Isoken Ibizugbe <isokenjune@gmail.com>
Date: Wed, 4 Oct 2023 17:25:43 +0100
Message-ID: <CAJHH8bEtKMYJ2RUn71uHuzNDUzEFNLQMxumKnp8ezb6pvxvGhQ@mail.gmail.com>
Subject: Re: [Error]
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for helping me resolve the former issue, but I have an issue
when running make in the "building kernel step" of the tutorial. Here
is the error message:
make[3]: *** No rule to make target 'debian/canonical-certs.pem',
needed by 'certs/x509_certificate_list'.  Stop.
make[2]: *** [scripts/Makefile.build:480: certs] Error 2
make[1]: *** [/home/vagrant/git/staging/Makefile:1913: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2

On Tue, Oct 3, 2023 at 11:18=E2=80=AFPM Andi Shyti <andi.shyti@linux.intel.=
com> wrote:
>
> > while cloning the Linux kernel repo, I had this error, please I need
> > help in resolving it;
> > git clone -b staging-testing
> > git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
>
> try with https instead of git:
>
> git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh=
/staging.git
>
> Andi
