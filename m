X-GM-THRID: 6464894536375074816
X-Received: by 10.28.143.200 with SMTP id r191mr550495wmd.1.1505735070643;
        Mon, 18 Sep 2017 04:44:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.72 with SMTP id x8ls816967ljd.12.gmail; Mon, 18 Sep 2017
 04:44:29 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD41ZRplhzrCXYA9GDbni/KwOQ4fzPFpw0kwHXVdb6W2MN8yUtyS8ipDBR64HSpQy2BUQFI
X-Received: by 10.46.67.12 with SMTP id q12mr2136965lja.35.1505735069183;
        Mon, 18 Sep 2017 04:44:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505735069; cv=none;
        d=google.com; s=arc-20160816;
        b=ncIZS6DW9RlteO2+bq/YgWA0EeNQwyb3ubIYmeil9D2iCtrdVk5x7Wgso0lDKtaN88
         uT3eCOMKJH7CKOSO8iST5hT1OYGFK1T+6fD4N+LLMXe+99nswyTN7rCpo2iiITV15850
         UfxvkiP08SXQzAuXEd+HOOiN8aIb4+uac+D3JfGkwHfuropQveoJtW4BOSgpRBWMzZaH
         NAvT5v0Tlu1g/aj8uSTZTTgEWpfww0xDb5nNwU61jMZB384YpDBArTPEDx9yBv6qvW6n
         T21DOR7LiihZNwL0lWJlvyiYsOXXL3ohtAvj5TLK6TPtSE9rOrQFO1q6OriuQFI0VM2r
         eHBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=F9Sp+uvmcbHhGxzpkBSdwpduhOiWv6XzXzGYDMJBNzQ=;
        b=GUMi4TSPQ20tFGptw0RoAaJGAZNidOr6a2e+UEFsLfiQDB/znkuY7TCeBQ9XLShrvs
         3PjohK1EI9EVu8Kj0dUaCa7RVDbaXUueDslAVPYeeNXLixrnpnawswt/EanPgCsaFF0H
         0ujEQbN9NE2DeEGZQjrCROaMF2aaqMrvIZ2Vp0Dd3KjSWZ/FCfwaSm6+yomgxJlC6Rvi
         hpgzKOWqzE1QEYhid9V9MB4SycYCRkaRTFMxnino9dSsdbvN4+WIDlii6er6R4+pICkd
         qrbTmx8n6EZG9/lK3hm8Gl5bfCvBt21mYz8gulOBJE501tJNES+9TXHNA7/5C+MvZfU3
         LE4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sakari.ailus@retiisi.org.uk designates 83.145.211.213 as permitted sender) smtp.mailfrom=sakari.ailus@retiisi.org.uk
Return-Path: <sakari.ailus@retiisi.org.uk>
Received: from hillosipuli.retiisi.org.uk (nblzone-211-213.nblnetworks.fi. [83.145.211.213])
        by gmr-mx.google.com with ESMTPS id e87si196838lfi.2.2017.09.18.04.44.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Sep 2017 04:44:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sakari.ailus@retiisi.org.uk designates 83.145.211.213 as permitted sender) client-ip=83.145.211.213;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sakari.ailus@retiisi.org.uk designates 83.145.211.213 as permitted sender) smtp.mailfrom=sakari.ailus@retiisi.org.uk
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk [IPv6:2001:1bc8:1a6:d3d5::80:2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 8F4F960109;
	Mon, 18 Sep 2017 14:44:26 +0300 (EEST)
Received: from sakke by valkosipuli.localdomain with local (Exim 4.89)
	(envelope-from <sakke@valkosipuli.retiisi.org.uk>)
	id 1dtuTQ-0004uq-S2; Mon, 18 Sep 2017 14:44:25 +0300
Date: Mon, 18 Sep 2017 14:44:24 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: media: atomisp: Merge assignment with return
Message-ID: <20170918114423.ewtuei2dpr7wcmdx@valkosipuli.retiisi.org.uk>
References: <1505226307-5119-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1505226307-5119-1-git-send-email-srishtishar@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)

On Tue, Sep 12, 2017 at 07:55:07PM +0530, Srishti Sharma wrote:
> Merge the assignment and the return statements to return the value
> directly. Done using the following semantic patch by coccinelle.
> 
> @@
> local idexpression ret;
> expression e;
> @@
> 
> -ret =
> +return
>      e;
> -return ret;
> 
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>

Hi Srishti,

I've merged the two patches as they're trivial and the commit message is
the same.

It's entirely reasonable to have a patch per driver but you should mention
that in the commit message (subject line) at least. This case is a bit
special because the other driver is also specific to the atomisp staging
driver.

Thanks.

-- 
Sakari Ailus
e-mail: sakari.ailus@iki.fi

