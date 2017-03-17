X-GM-THRID: 6398525870990950400
X-Received: by 10.157.39.22 with SMTP id r22mr8293935ota.151.1489819162044;
        Fri, 17 Mar 2017 23:39:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.88.40 with SMTP id r40ls10093080oth.13.gmail; Fri, 17 Mar
 2017 23:39:21 -0700 (PDT)
X-Received: by 10.157.63.242 with SMTP id i47mr8020784ote.53.1489819161711;
        Fri, 17 Mar 2017 23:39:21 -0700 (PDT)
Received: by 10.202.91.3 with SMTP id p3msoib;
        Fri, 17 Mar 2017 10:50:37 -0700 (PDT)
X-Received: by 10.157.21.37 with SMTP id u34mr6933169otf.40.1489773037787;
        Fri, 17 Mar 2017 10:50:37 -0700 (PDT)
Return-Path: <rdunlap@infradead.org>
Received: from merlin.infradead.org (merlin.infradead.org. [2001:4978:20e::2])
        by gmr-mx.google.com with ESMTPS id b188si251493ite.3.2017.03.17.10.50.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 10:50:37 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:4978:20e::2 as permitted sender) client-ip=2001:4978:20e::2;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:4978:20e::2 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:Cc:References:To:Subject:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NVJznMHIEksb2fhwsnfCckjIRbYzQK7gdptfKsRr5XA=; b=XS4Q3hZbSOlUaNA9jO682D6uDp
	h2LqO9fRDZ2jFvzhSXcKINUvXU1e9VF/wY4+wg84xJpsi5UA7ga12l5tsrgx2CWyFokI2frq0ALs8
	zdvBWBC8d7NX9sueppO5iqX3WPXWG//3QCS7C88eaLF8UoeEMiywk4CTVwoo3nfMX3S4uXRGfV6QS
	ETT0H0s+BU7B6AupHU9TB3OGL82Ly9j5ZFSsWU42DuRT1UwPFBhwKO9HyuJunJtCZWOvUdo3jKWjL
	PMculX47shDz4YaMzyR+QdubZh45gh9/ETLD+YvopB3vSgfsVxvfmgwF6f+qobusK5xpsR1vy3aol
	+gs0FK9Q==;
Received: from static-50-53-32-16.bvtn.or.frontiernet.net ([50.53.32.16] helo=[192.168.1.19])
	by merlin.infradead.org with esmtpsa (Exim 4.87 #1 (Red Hat Linux))
	id 1cow1M-0006ux-Ak; Fri, 17 Mar 2017 17:50:36 +0000
Subject: Re: [PATCH] Documentation: md: md-cluster.txt: Fix typos
To: Tamara Diaconita <diaconitatamara@gmail.com>, corbet@lwn.net,
 linux-doc@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <20170317174812.12272-1-diaconita.tamara@gmail.com>
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <2636fa06-a305-f01e-1e2a-581e279d0527@infradead.org>
Date: Fri, 17 Mar 2017 10:50:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170317174812.12272-1-diaconita.tamara@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 03/17/17 10:48, Tamara Diaconita wrote:
> Fix typos in md-cluster.txt file to make documentation clear.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  Documentation/md/md-cluster.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/md/md-cluster.txt b/Documentation/md/md-cluster.txt
> index 3888327..35e05d4 100644
> --- a/Documentation/md/md-cluster.txt
> +++ b/Documentation/md/md-cluster.txt
> @@ -77,7 +77,7 @@ There are three groups of locks for managing the device:
>   3.1.2 RESYNCING: informs other nodes that a resync is initiated or
>     ended so that each node may suspend or resume the region.  Each
>     RESYNCING message identifies a range of the devices that the
> -   sending node is about to resync. This over-rides any pervious
> +   sending node is about to resync. This over-rides any previous

Might as well fix this one also:
                                            overrides

>     notification from that node: only one ranged can be resynced at a
>     time per-node.
>  
> 


-- 
~Randy

