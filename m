X-GM-THRID: 6470854058702798848
X-Received: by 10.28.1.146 with SMTP id 140mr390956wmb.2.1506640778118;
        Thu, 28 Sep 2017 16:19:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.141.225 with SMTP id o88ls1454750wrb.3.gmail; Thu, 28 Sep
 2017 16:19:37 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDdCJkxnBuYyqwhkVVcMjdI2JvctcLQwhQ4hXyNWl4LqzFtJijQoMPqMj1J8fm1xne6BbZk
X-Received: by 10.28.63.86 with SMTP id m83mr396432wma.21.1506640777192;
        Thu, 28 Sep 2017 16:19:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506640777; cv=none;
        d=google.com; s=arc-20160816;
        b=JiAhYeamNN5H5pYAbQviwNfXE0zq4Vn/DeDXhzmRxa6p6UZfIX1+yblTDG9IDLjXai
         /+IY4ZxQkJ8C979m31TV9xcYhZQbj3SJ8eheEkbCeuURrX1Xe0xU3iO3pkbQMsyYrWj6
         O9YtmelhSbfKy5fgRzsqD3Aee2UgUTu5h1ZgrY40MynRrqcDpkSuUBFPo4rPk+Y02DJ3
         o7KVMoS4EiKsGyyPyjDL4RRDg5RYP1ZFc58D7+haGM/+O4xJbiBQDciA2v+tRpOMjiDt
         /YDErOdIG+ob6US/PfAn41M88WNNbnRA7TAqU4jwwi+bRz4RWrmnN1+zj0OaF1cIXf4m
         MdyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=6/Pe6kLE2/sMPHkXLHjNr/PlT/rmIwgahSLE2+/8yyM=;
        b=QVz/rlu26kKnJTNmLcU4ME9Sbz9GJoHa1emk+D5/5rPVFC+mMKbZkAYuQJ2BGtKzFp
         R4kPI2d1JXLNmzpJ+s7ABRmsTqQkF8fYSWipqI0hsn31tbcHPxpzSSAWa/V5zBbjGWU8
         2ce550LgJdf3oCbeFh5dU3rBA/YyK2cEySOry5lFChDb1hb2UFxsGdXlaHEqXunfqbzZ
         aH834oiUhsFNKvlrusYfD5Z8HEwf2NCtERd4VZeHV/zwOi9xBoN8NwD01TnyqAtfCC/E
         ILEa6sUgPdrgoeNFP4jyP9k7PusFq88o3XSF443JRjVCkCBfVYUServ34QMVCyQOt8ML
         XsBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [141.255.128.1])
        by gmr-mx.google.com with ESMTPS id 191si264022wmn.2.2017.09.28.16.19.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 16:19:37 -0700 (PDT)
Received-SPF: neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=141.255.128.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 7D27CECB5;
	Fri, 29 Sep 2017 01:19:37 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hom0rJWc7C5A; Fri, 29 Sep 2017 01:19:37 +0200 (CEST)
Received: from var.youpi.perso.aquilenet.fr (unknown [IPv6:2a01:cb19:181:c200:3602:86ff:fe2c:6a19])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id E8C1DEC97;
	Fri, 29 Sep 2017 01:19:36 +0200 (CEST)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.89)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1dxi5f-0003Cx-GN; Fri, 29 Sep 2017 01:19:35 +0200
Date: Fri, 29 Sep 2017 01:19:35 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Keerthi Reddy <keerthigd4990@gmail.com>
Cc: outreachy-kernel@googlegroups.com, speakup@linux-speakup.org,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca
Subject: Re: [PATCH] Staging: speakup: replace 'S_IRUGO' macro with octal 0444
Message-ID: <20170928231935.ejs4iwskrkbo6l34@var.youpi.perso.aquilenet.fr>
References: <20170928153826.GA19227@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170928153826.GA19227@manoharreddy>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Hello,

Keerthi Reddy, on jeu. 28 sept. 2017 21:08:26 +0530, wrote:
> Everyone knows what 0444 means. But one has read through docs
> to understand the meaning of 'S_IRUGO'.

Yes. Could you do the same on all files of the
drivers/staging/speakup/ directory altogether?

Thanks,
Samuel

