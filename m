Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D605A1369
	for <outreachy@lists.linux.dev>; Mon, 16 Oct 2023 01:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cItZltDN"
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-57b74782be6so2149615eaf.2
        for <outreachy@lists.linux.dev>; Sun, 15 Oct 2023 18:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697420472; x=1698025272; darn=lists.linux.dev;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=npPADBXYfDn6vFybL2r6rg5Gbim0rcJNk4DoWN2QQ9I=;
        b=cItZltDNXpXXLHVudtPn/RjAyHrypztjZDoZ7HK7efssETMdD77ZLxpZgcsWREaYfl
         PUkYnt3LQDb3mntXKQD1G3oKJ7IvMUz/vb8AP6Sy4ob2I9jSOL3SzpJtqLjhN8eOCe3B
         +okfF2KCDHiTn6H+ODf7pYeMe7NSsuJqFm0moSubNQONpax0ro9A+ACqbdHFxADTK1mb
         jmjlEycqjjwWnQilfxZpCt0G9Uory4gAGAYtWUz7gYgONqf9iNLcp8TqY3LBo9ekMEgg
         9ndcMFHgOTNw004UX2mU9LzauZXAW+fZVC5VFUUJdYAXrKtHgg3eCMsOhPQV7Xau2Rrw
         J5GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697420472; x=1698025272;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=npPADBXYfDn6vFybL2r6rg5Gbim0rcJNk4DoWN2QQ9I=;
        b=NvXNvtnqVyYWI87zZGg1zupkvQ1IOXSx/gKWscmd3V8dBJFimysuk4Ev805dSQ18IH
         uYwlvdCL/X9wwX3FPcXBkx6eyqfdUfe5sgbd99DiNWZdVDowpiNV4zxnWBGrIcbzVQCi
         pSn4XMCds/mmYrIoZdpqH8uEMeCZnrWOJgD5cW1N9VqES153B2gwlnRmXEGRCPJVDeh0
         BOO70bcUkUn8AZthROHDxMF8T2D48LXOa1JsghZEuE2IKiv6+BFs+sh45cwPWU48saR9
         o1M4SRtNGi/VWTm/M55fj9WIqlb/woHT9NxCAwd4plAftcgLPKw/h5eQ302PHxcChB5d
         aysA==
X-Gm-Message-State: AOJu0YyG4Kywu5KPEfKLIJSauLiW0pzhyzB0x0YbW59nhTr+a3TNp3Zl
	J67uFWjBJqvTmejmZpcdwB8D1JHgg2hjXA==
X-Google-Smtp-Source: AGHT+IEAVFogjgt2wpeWTlWLawuxpvYXeStK0C1aXNjZuSp32SfjxYIuNtB94NNIDVIWyKFsLh2Nlw==
X-Received: by 2002:a05:6358:7299:b0:164:9d1e:c3cd with SMTP id w25-20020a056358729900b001649d1ec3cdmr20966810rwf.28.1697420472461;
        Sun, 15 Oct 2023 18:41:12 -0700 (PDT)
Received: from Negi (2603-8000-b93d-20a0-2184-6fa4-0d39-1c6b.res6.spectrum.com. [2603:8000:b93d:20a0:2184:6fa4:d39:1c6b])
        by smtp.gmail.com with ESMTPSA id z28-20020aa79f9c000000b0068ff6d21563sm3306463pfr.148.2023.10.15.18.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Oct 2023 18:41:11 -0700 (PDT)
Date: Sun, 15 Oct 2023 18:41:09 -0700
From: Soumya Negi <soumya.negi97@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Martyn Welch <martyn@welchs.me.uk>,
	Manohar Vanga <manohar.vanga@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Need advice on planning patches for staging/vme_user
Message-ID: <20231016014109.GA6619@Negi>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Hi,

There are printk's in the staging driver vme_user(all in 1 file) which triggers
checkpatch warnings all over. To replace printk() with appropriate logging 
mechanisms(a mix of dev_err/warn & pr_err/warn), if I go by a patch for each 
function that calls printk, the patchset will be too big(~33 patches). 

Or, if I split up patches this way: printk() to pr_*() & 
printk() to dev_*(), there would be fewer patches(atleast 4) but perhaps
it will be harder to review? (There are ~78 call sites)

What would be a good way to structure the patchset?

Plus there are some other changes, like  using __func__ instead of func
name in printk error messages, that can be done. Is it okay to make this
change in the error string while replacing the printk() or does it need to be
in a separate patch( after the printk's are replaced)?

Thanks,
Soumya
