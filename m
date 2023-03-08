Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97CE79FE
	for <outreachy@lists.linux.dev>; Wed,  8 Mar 2023 17:15:14 +0000 (UTC)
Received: by mail-pg1-f170.google.com with SMTP id d10so10026907pgt.12
        for <outreachy@lists.linux.dev>; Wed, 08 Mar 2023 09:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678295714;
        h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ftmtxG4M8Q14oTzhiZEo63q5fnF0Xw3dPrs/IvQu1sM=;
        b=DCSqG3NSA0DW1YwEUvFG4r5ZdHCEvzyOL4BMYGnK1U4MuIFghcMiT8C7iBwXJkUhkB
         1YhIBrAVKjt5LNcjItpaupOergXzmnu+ugWu7tcHiqhMtaoaV1tQ1OTUBOfbCh4/tukK
         wAyQzviKcPYi4vFUyFn7dXtJ3yTgaI3mQ7ehmfGFFpOqjmVF9POOHCs774FYw822IOju
         FE+Uvecl6E/TlZJsTkiEfyVwLp36RyHfo2bhHFYcgJvQbtpyFWWygkp9rAiXFUbveNaK
         Z4+xPjyigfJJMbltz5DKFxoG6ymSwhDCjiVmYNdasT7Gx4IKzOiLJSzskEL3PcCtgSoK
         sfhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678295714;
        h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ftmtxG4M8Q14oTzhiZEo63q5fnF0Xw3dPrs/IvQu1sM=;
        b=k8Q9Y7Tk+FDuoYn8pXhFN1obZceYXfZs64TAnZnA3Qxi2tS1qIyIBcKWQGICjxwo5M
         AtqkXoKPxJxzXUQ+wlskMxWYdKMek/guenL3w40khcE0NUA+AlemAU1nrqjjGJ8nykvk
         XTpzGY2qVc6oTWfTp8nZSncDCpNaqKYyJXEZI0cYDbi+GLZ0KIFAVaMa5y37RKqrXlDG
         9uQL15jy88dthFAHcFwROJAqk7cyuTRaR0v0TpCkNHL2zGzN2Q9w9B1sRNlBin0EWetv
         LPCj1/26aPlSy9Jh5uAK+siPYFyH7ArQrWWW/FY/0VBe8Y9er43vmZbt8NKh5ajiSpDT
         LqlQ==
X-Gm-Message-State: AO0yUKVKUKpt088hgDEa1+5mni3PtjYX4N/ql7veB6kLDbC9VlBYPpQv
	5Ma6PK58T4SC/wPGRmCWXBKy2G5N2bA=
X-Google-Smtp-Source: AK7set9en6AqHNdWWBkdldc9ssxLdOboR2p7n7Mm1Ac45WVQ8jQfk2dnaSAe2hUpZnwIaB+WmfEsYg==
X-Received: by 2002:a05:6a00:a81:b0:5a8:aa5e:4bc3 with SMTP id b1-20020a056a000a8100b005a8aa5e4bc3mr25376937pfl.1.1678295713729;
        Wed, 08 Mar 2023 09:15:13 -0800 (PST)
Received: from ubuntu ([59.95.155.108])
        by smtp.gmail.com with ESMTPSA id u4-20020aa78484000000b005809d382016sm9604117pfn.74.2023.03.08.09.15.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 09:15:13 -0800 (PST)
Date: Wed, 8 Mar 2023 09:15:09 -0800
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: julia.lawall@inria.fr
Cc: outreachy@lists.linux.dev
Subject: Help to setup enviornment
Message-ID: <20230308171509.GA4056@ubuntu>
Reply-To: 12ef38a-fd4c-947c-4ea3-a641ef5b1310@inria.fr
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Thank you Julia for your response. I followed your instructions and  get rid of the earlier mentioned error. But on running the command "make -j2" it shows the error:
##
Killed
make[1]: *** [scripts/Makefile.vmlinux_o:61: vmlinux.o] Error 137
make[1]: *** Deleting file 'vmlinux.o'
make: *** [Makefile:1231: vmlinux_o] Error 2
##
As per the system logs, the process is killed due to insufficent memory.
I am running the linux on windows machine in VMPlayer and I have provided 4.6 GB of RAM to this machine. My systems RAM has a limit of 8 GB. I would appreciate some more help in it. Thank you.  
