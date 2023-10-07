Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C58823749
	for <outreachy@lists.linux.dev>; Sat,  7 Oct 2023 13:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O4fd9Skm"
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-57b67c84999so1894668eaf.3
        for <outreachy@lists.linux.dev>; Sat, 07 Oct 2023 06:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696687171; x=1697291971; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0AfPrQIWx5cSgwanlfiTgJbo4XuUHbkW/J3vQPaoqZE=;
        b=O4fd9Skm4xHyLkT0wQgtTiWokjP0qeXYhk7l3cnkmnxbZ07MbIy5GkAl3AxhhuuajR
         bveLsHw3j9XbnL34oyM9h/goWUvyKG3kAynu9EgQk4vMbKYo+mWos6yu6yIG1hf4V5zx
         Ndo0rW0D0uXqFcNoF7ho25ByMhOn1XdPP9Kv7jaBz/9kdVniGvJEVMwiUo4JxingByfe
         G4c0HD1KyLX52ATLX/n2m8sq87uozJsOPx9+AqSaIX6aJFc8Lb6NgOLQIM4+GdK79jx9
         t2c3hztrPazklUSYA0v3CKnnN7+pd8rxoUqKBvYp9qV4MiaamUBoxhw57A20GWRSQQfp
         7CYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696687171; x=1697291971;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0AfPrQIWx5cSgwanlfiTgJbo4XuUHbkW/J3vQPaoqZE=;
        b=XbckuwoHYa1QOp0+ETh9qCI8w1hTwAv8YPdTVUOOB6+tBWKs588VeSC+MBuL1BS8RZ
         KiboN/ieTa80lXZU7wuvYrlyICzAw3CeU1d5xwWvk33IT0sw6IAazrEEnI7pbsBX4P/1
         mhOCX4fCniZcicVv+Thyh23t6ECkYMEp9xS9Qxrzm+yQHe0Mv2vZTYKrF4fZKI3HGk0P
         CJtJOK5qgRZBJZd99M64AmiA2rHHjm8UZruuS4EOk9Hlhbo41l9/26i/Utlnr6MBb9S3
         IJSSo+1jGUAxvXvlp4oAUZwzUD7smVgOUJQrwOpSLgKcKX1qDjE7XHH1jiuyBIxFG0bj
         kokQ==
X-Gm-Message-State: AOJu0YzAdyhpOKGoJGREnO8Hd01xkiF/OID3zKar86cxRoJzCNcf2C4X
	Bsnfh1l+f1NdVs4F0d+q90oZquHm4DjrsVp6ifU=
X-Google-Smtp-Source: AGHT+IHT5qI7pCdewVKCRlUCOuUqH+nh+rAOziBhTwdu7b1gX8mW58JSN4JGLyNA1BVW5aho6t5ZScYuO1O5gMF8gxk=
X-Received: by 2002:a05:6358:9196:b0:14f:9904:9d6e with SMTP id
 j22-20020a056358919600b0014f99049d6emr12123513rwa.31.1696687171134; Sat, 07
 Oct 2023 06:59:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CADFX3OQ1rdnR=ONu5wufAYN0NrvMkaveQ_Y9z_1K8m9Dzz3SPA@mail.gmail.com>
In-Reply-To: <CADFX3OQ1rdnR=ONu5wufAYN0NrvMkaveQ_Y9z_1K8m9Dzz3SPA@mail.gmail.com>
From: Isoken Ibizugbe <isokenjune@gmail.com>
Date: Sat, 7 Oct 2023 14:58:05 +0100
Message-ID: <CAJHH8bG_amaGgqRd+Whz=MODWemACQxbweLh0nU3RoL8_NQY8w@mail.gmail.com>
Subject: Re: Unable to make file
To: Calvince Otieno <calvncce@gmail.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is discussed here:

https://stackoverflow.com/questions/67670169/compiling-kernel-gives-error-n=
o-rule-to-make-target-debian-certs-debian-uefi-ce

You can just follow the instructions about removing the whole key thing:

This thread might help you :
lists.debian.org/debian-kernel/2016/04/msg00579.html. In the .config file
copied from /boot find and comment out the lines CONFIG_SYSTEM_TRUSTED_KEY
and CONFIG_MODULE_SIG_KEY. =E2=80=93
Altaf
May 24, 2021 at 11:17

Then you can run make olddefconfig before trying again to compile.

On Sat, Oct 7, 2023 at 2:50=E2=80=AFPM Calvince Otieno <calvncce@gmail.com>=
 wrote:
>
> Hello team!
>
> I have a problem. I tried running the Make file and I got this error mess=
age:
>
> make[3]: *** No rule to make target 'debian/canonical-certs.pem',
> needed by 'certs/x509_certificate_list'.  Stop.
>
> make[2]: *** [scripts/Makefile.build:480: certs] Error 2
>
> make[1]: *** [/home/calvince/Documents/labs/git/kernels/staging/Makefile:=
1913:
> .] Error 2
>
> make: *** [Makefile:234: __sub-make] Error 2
>
