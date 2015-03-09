X-GM-THRID: 7339802361856
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e586cd80286c5b75
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.208.12 with SMTP id ma12mr2006629wic.6.1425943723432;
        Mon, 09 Mar 2015 16:28:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.137 with SMTP id s9ls68514las.72.gmail; Mon, 09 Mar 2015
 16:28:42 -0700 (PDT)
X-Received: by 10.112.25.7 with SMTP id y7mr4198256lbf.21.1425943722767;
        Mon, 09 Mar 2015 16:28:42 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id l8si942475wia.0.2015.03.09.16.28.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 16:28:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl18 with SMTP id l18so21632193wgh.11
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 16:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-type:mime-version:content-transfer-encoding;
        bh=vdTJXnowA4THap/1+hn63EK8pCuoJXNXBS/QEeT97p8=;
        b=PaB7kJwMZHzrY5kEJlwtv8iRtXzDT0grPJqwpf21Brl8wN9mfx51ish4myOSaZS92e
         uXrheTNJWIaw7V3N6NXZ+rwau3fQ0HPePg5FHlN4ffeo0xGVHzjnnoOl9j5J9kisp2XA
         +YgN7NOwXHO4NQM0mFBUPMdLmPTBtlAuEvk4ILMNVvjtjOKclnH2TwyFWzH0geJMMbax
         5coXXzGMTtWc4CQfWdaHE/Y+KgnTWgP8bJU+OXNtKCCoD8B2IS7lI1TWNVz311d6DEI7
         x6XmZbds8eSw4NYJllS5Dn6ryp9SPJFCDnc/KiNFRENE/J6MMhBzNPNJcaEvqkZZuIcI
         5w/g==
X-Received: by 10.180.79.232 with SMTP id m8mr109993056wix.81.1425943722673;
        Mon, 09 Mar 2015 16:28:42 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from [192.168.0.103] (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id g5sm30311998wjr.19.2015.03.09.16.28.41
        (version=SSLv3 cipher=RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 16:28:42 -0700 (PDT)
Message-ID: <1425943685.4907.4.camel@Inspiron>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192e: Remove
 unnecessary macro
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Date: Tue, 10 Mar 2015 01:28:05 +0200
In-Reply-To: <alpine.DEB.2.02.1503092219440.2057@localhost6.localdomain6>
References: <20150309204828.GA25299@Inspiron>
	 <alpine.DEB.2.02.1503092219440.2057@localhost6.localdomain6>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit



> Small spelling mistake.  Also, the patch also removes several other 
> macros, so you may want to mention all of them.

Oh, I swapped some letters.
Thanks for reviewing.

Cristina



