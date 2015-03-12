X-GM-THRID: 7760961863680
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6ca8df34d2a1a044
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.41 with SMTP id x9mr6129596lax.10.1426151552611;
        Thu, 12 Mar 2015 02:12:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.211.101 with SMTP id nb5ls1107397wic.17.canary; Thu, 12
 Mar 2015 02:12:32 -0700 (PDT)
X-Received: by 10.180.90.169 with SMTP id bx9mr3353420wib.6.1426151552251;
        Thu, 12 Mar 2015 02:12:32 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id cl5si476385wib.3.2015.03.12.02.12.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 02:12:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x234.google.com with SMTP id w55so14868190wes.3
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 02:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-type:mime-version:content-transfer-encoding;
        bh=MEDPjtrrtC/j9NbDnw49se+0FqS9pSrAAegLJUgrpPs=;
        b=R2yLs7Ua2LMlwzHri3EzSVRnjYNVe6JSEFkr1gCvKxEKKFu6oRBqHsg5etyKLNKXzp
         mWuBJjwjtZGvWWzhDXbSZ507dSGOHjg1URAo8XEMhBiI/iCzn7/XhYt9oPtyf7FZhlqN
         A79/ZIonEO+TVF88UI2Q9caoLJgNOrYJ06G/ZttK12Zg6ivSQ4tAYhiV/dOUnpIQ8acc
         xRzYnB1rERRNKiA/7eGI7BQBcYT3FlhCGnHHd0GxzcLF5mwnMNLSTfd1zKfuuwtewiLg
         hTumnRwPhy5RU16gMdLg7V+GrSuUojZ/5UFbzfqrNJX5O3pBoFAX0dhIiJEKKLKZx+PI
         4VIQ==
X-Received: by 10.194.223.103 with SMTP id qt7mr81629029wjc.35.1426151552177;
        Thu, 12 Mar 2015 02:12:32 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from [192.168.0.103] (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id v13sm23380966wij.10.2015.03.12.02.12.30
        (version=SSLv3 cipher=RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 02:12:31 -0700 (PDT)
Message-ID: <1426151512.6120.2.camel@Inspiron>
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: rtl8712: Remove
 unnecessary variables
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Date: Thu, 12 Mar 2015 11:11:52 +0200
In-Reply-To: <2934799.MUPJAeKi6D@wuerfel>
References: <cover.1426126379.git.cristina.opriceana@gmail.com>
	 <61eb27f3cd4bb009cbbd1c6d4bfd9b89a109fd36.1426126379.git.cristina.opriceana@gmail.com>
	 <2934799.MUPJAeKi6D@wuerfel>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit


> When a local function unconditionally returns success, it's often a good
> idea to change the prototype so it returns void.
> 
> That would also improve it a bit by avoiding the non-standard _SUCCESS
> return code. The kernel convention normally is to return '0' for success
> and a negative error numer (e.g. -ENXIO) in case of an error, with a
> type of 'int'. Changing all the return codes in this driver would
> of course be a separate patch.

Indeed, _SUCCESS doesn't look well there. I'll check this out.


Thanks, 
Cristina


