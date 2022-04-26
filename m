Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264747E
	for <outreachy@lists.linux.dev>; Tue, 26 Apr 2022 18:31:18 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id d6so18327950ede.8
        for <outreachy@lists.linux.dev>; Tue, 26 Apr 2022 11:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CtivK/lbjkFn6fCJitHMAm73ZL6+X5IagBxOgsbgoFw=;
        b=ah1fX5YhJKRbkl+xlw+Gun6kLxP6FBDciSqczj3fapwkuEbS7nsMr7mlTDVtKJ1EUl
         CvYuRt7OKaa2x4WC3Ov4dKXFA91FO0RGO2RCrJhnO9TZa0V9JmgcNWreiw0dpFxJiEto
         oCU5egWOMJr9SFwZhP8ZpezrzNDQLbQkflTlcFhzqz7y6XdzaH5LqWR4edEyGlnishXZ
         5ymYVmGlemkREtdQoT/iYs08oFnqCVoD/t5MrcqZfyK/u129VbxWppE5lb1+bwf1RWK6
         L9UpILm7HT1PkQXpP/8IPzwCfNBUBwE10QWwativi/VOGN0tn4iUIRYc400hEhugKVey
         tHHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CtivK/lbjkFn6fCJitHMAm73ZL6+X5IagBxOgsbgoFw=;
        b=nX2heIekaNG0YWMt8T0cYq/0jNeWWpvHDKw4kow5Wv41G7aKuCgvzdxH3wz3euutK+
         SNga8wZxHiLhzLoNXigJxh1U9GFJM9Jd8AuGgh0X+7e1mOi7xXiSvaWXFa2o3C2DJ1ts
         Y/AHna3DRXivfz7vdK+q3QApXDy3snKYOKJBkUHwmceKyWm5Gf3NhvgVTivrFkNADAC/
         626iit8nUpM52X0pjtQDash11WBpH19I4gJ3FkXggKWmQpe4sdCruvBxODK0TZsefYJp
         Rbqy7HAVgCOTp5W615Oi+yfhHvht4ciSIBhR6R5pdoROfJROn28tLrrVvJSakjk6HdNh
         j9Qg==
X-Gm-Message-State: AOAM530kQPpSUMMi8IyMZG4tn6V/VKVTBEqBrmFyzE15oZ1QkDitAnSS
	9p0w8P2rk1wyLpYEsRj+nJA=
X-Google-Smtp-Source: ABdhPJy5U8SX/X1DAwEV03AhVM1LZD7u+G9Vyhc7qZDg06eobpf3P/8ZRCfEaMn2oPl979RDTw6Swg==
X-Received: by 2002:a05:6402:2318:b0:413:7645:fa51 with SMTP id l24-20020a056402231800b004137645fa51mr26535565eda.201.1650997876370;
        Tue, 26 Apr 2022 11:31:16 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id d11-20020a1709067f0b00b006f395247b5esm2817517ejr.84.2022.04.26.11.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 11:31:15 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Ira Weiny <ira.weiny@intel.com>, Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, "Matthew Wilcox (Oracle)" <willy@infradead.org>, Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>, Vlastimil Babka <vbabka@suse.cz>, linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, outreachy@lists.linux.dev, Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v2 4/4] Documentation/vm: Rework "Temporary Virtual Mappings" section
Date: Tue, 26 Apr 2022 20:31:12 +0200
Message-ID: <3429395.iIbC2pHGDl@leap>
In-Reply-To: <Ymfb1saaHVuq4IUl@linutronix.de>
References: <20220425162400.11334-1-fmdefrancesco@gmail.com> <3610796.MHq7AAxBmi@leap> <Ymfb1saaHVuq4IUl@linutronix.de>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On marted=C3=AC 26 aprile 2022 13:47:34 CEST Sebastian Andrzej Siewior wrot=
e:
>=20
> Hmm. It is thread-local in the end. There are slots 0 =E2=80=A6 KM_MAX_ID=
X for
> the mappings. Slot 0 for task A can be different from slot 0 for task B
> while both run on CPU0. So the same address, that is returned from
> kmap_local(), will point to a different page for both tasks. Both tasks
> can't be migrated to another CPU while the mapping is active.
> "CPU local" sounds like something that is same to everyone on the same
> CPU which is what this_cpu_read() for instance does.
>=20

OK, I agree with you :)=20

I just got three notices from Greg K-H stating that he has applied three of=
=20
my driver / Android patches. The patches are some conversions from kmap()=20
and / or kmap_atomic() to kmap_local_page() (or wrappers around it):

https://lore.kernel.org/lkml/20220425175754.8180-4-fmdefrancesco@gmail.com/
https://lore.kernel.org/lkml/20220425175754.8180-3-fmdefrancesco@gmail.com/
https://lore.kernel.org/lkml/20220425175754.8180-2-fmdefrancesco@gmail.com/

I had forgotten that I wrote the following sentence in all three commit=20
messages: "[] With kmap_local_page(), the mapping is per thread, CPU local=
=20
and not globally visible. []"

Therefore, I'll add "thread-local" or "per thread". I probably like your=20
wording more than mine: "thread-local" is more suitable.

=46or consistency (again) I like the other change you proposed, which is to=
=20
add "deprecated!" also in kunmap_atomic(), exactly as it is already in=20
kmap_atomic() kernel-docs.

However, I will wait one more day before sending v3, in case there are=20
other people who want to suggest further changes.

If I remember correctly, I'm overlooking nothing else. Do I overlook=20
something?

Thanks for your help,

=46abio


