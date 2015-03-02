X-GM-THRID: 5958272024576
X-Received: by 10.180.101.101 with SMTP id ff5mr2363733wib.5.1425315552300;
        Mon, 02 Mar 2015 08:59:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.225 with SMTP id n1ls481487lah.52.gmail; Mon, 02 Mar
 2015 08:59:11 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr3988316lbb.11.1425315551809;
        Mon, 02 Mar 2015 08:59:11 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id r6si710528wix.0.2015.03.02.08.59.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 08:59:11 -0800 (PST)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id ex7so15597079wid.1
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 08:59:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=yrfuo5UYSWKtPjIECDxno8I7x28ilw4UFD7Eku3QJ30=;
        b=HHyR5XLkC6saFNAzPgyGVHvCcZXsBd8SKv0F7IyF3VzyBjpBj8XO6rvEbxrhhJh5qE
         Hb1P+Z8YV+76cZe5/v7nfu5Kufw3njc4Qd5woZMrhyknsfh2scEqD9ptgBL/zfKMN6L8
         hM7sSGdauZNNmXsmNZuZat7zo3WvM8zoguTp58VjNrIeG+atlIHw9QgxRltx/ZfBaXff
         cLTG7MUQyyc/PHz6G5NtIG4I/IItnOUSxfo6+P5kJ/QIv/emUa3yowAlwYof0nVwNCO2
         fetAU9D9iJGhWVjy+ZyUhNB/j9rYx66SBL78dPcCvKA6QNwBpsRB7yTi958texKGYxT8
         FcSw==
MIME-Version: 1.0
X-Received: by 10.180.108.177 with SMTP id hl17mr37248175wib.35.1425315551731;
 Mon, 02 Mar 2015 08:59:11 -0800 (PST)
Received: by 10.28.189.195 with HTTP; Mon, 2 Mar 2015 08:59:11 -0800 (PST)
In-Reply-To: <20150302165608.GA14716@kroah.com>
References: <1425314747-9532-1-git-send-email-tinajohnson.1234@gmail.com>
	<1425314747-9532-2-git-send-email-tinajohnson.1234@gmail.com>
	<20150302165608.GA14716@kroah.com>
Date: Mon, 2 Mar 2015 22:29:11 +0530
Message-ID: <CAOdjUyX-Ubd5HvOg_tGF_3WYFR_+FFAdgJ39e96FFJLQv6eq=w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: lustre: lustre:
 libcfs: Replaced printk() with pr_err()
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Sorry, my bad. Re-sending the patch right away.

