X-GM-THRID: 6476782191370043392
X-Received: by 10.80.167.162 with SMTP id i31mr3262397edc.9.1508241683495;
        Tue, 17 Oct 2017 05:01:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.201.70 with SMTP id p6ls622012edh.3.gmail; Tue, 17 Oct 2017
 05:01:22 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAMBosTwbz4g45N33F3Sle4S2pM1YgOKQGCefIofgd9w3vuHkEaPLlK5oNqffgIDFkz6dXr
X-Received: by 10.80.139.209 with SMTP id n17mr3254745edn.10.1508241682657;
        Tue, 17 Oct 2017 05:01:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508241682; cv=none;
        d=google.com; s=arc-20160816;
        b=foGK/cGKgJCmUTyzOUExFMk8cyIKt5T0X5yRsMB4dKWFMczCVtuwwxxOXjH8HL7UHe
         5RNfZn9/cN9gVNygc+4IjCbDMC7Uh1bNVkJ4bJURcqWOOC1ULti1lw3V6JpBwlNS2IWS
         9cMzNCbUoD/mgtDwizHrH4MJQdjSBkP6kcZGhfQGU/53hmvmX9BUk6DuHZlG2/9g2bK9
         r5pIBaoW1DbKI+kyqHeOHPLI1vu5zvtSSCHdZFCbJ5/4tzKA9Bmz1XclhX7IWWgkP6vU
         QLLQiX8AaYm/uQuPfQWpynE1Z+GYtPH83YDm+qFAWp9YHfgVn57vSPdKm8YtkZt3N0B/
         mdtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=pdkhmdXRF1aAwUVvn0AJPVmdheZVk4JrMTUh8vOZeno=;
        b=gm1mHyURY/+SABtgU37mbr8/P/OSST/A7wqC83Q6Huc0zbDslRN/Fxpz+Cjs8cZmJm
         d/1GtDbLfHmRlGib6VeDz7qdIG9VhCIR0Rq3AZY6NxYqt21ePLVSr3aNV1iKyeMB9Ff4
         jSKcQMoJ6TE39zwkN4nqJOshihS9QyR6LYsDmGgHDiIQXqy36cfAjnjJsAZbCqAnZgjr
         EPhtdI4gmtGjw8JkUk1Dlp0M3JeUKbj7/oCSa7P1qh6EwQrz9k+VPIbmG3k9Go9e+3La
         szunxkRA+hzRwvMc00tFGO8cLtoj3oAe6i90QPmBa4QELKPggL55zd5GicC1kNhFzLKG
         PRXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sakari.ailus@retiisi.org.uk designates 83.145.211.213 as permitted sender) smtp.mailfrom=sakari.ailus@retiisi.org.uk
Return-Path: <sakari.ailus@retiisi.org.uk>
Received: from hillosipuli.retiisi.org.uk (nblzone-211-213.nblnetworks.fi. [83.145.211.213])
        by gmr-mx.google.com with ESMTPS id a57si411934edd.3.2017.10.17.05.01.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Oct 2017 05:01:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sakari.ailus@retiisi.org.uk designates 83.145.211.213 as permitted sender) client-ip=83.145.211.213;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sakari.ailus@retiisi.org.uk designates 83.145.211.213 as permitted sender) smtp.mailfrom=sakari.ailus@retiisi.org.uk
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk [IPv6:2001:1bc8:1a6:d3d5::80:2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 7CAF860107;
	Tue, 17 Oct 2017 15:01:21 +0300 (EEST)
Received: from sakke by valkosipuli.localdomain with local (Exim 4.89)
	(envelope-from <sakari.ailus@retiisi.org.uk>)
	id 1e4QYi-0001Sf-Sr; Tue, 17 Oct 2017 15:01:20 +0300
Date: Tue, 17 Oct 2017 15:01:20 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 0/2] staging: atomisp: memory allocation cleanups
Message-ID: <20171017120120.fjztitbo6jcoki6j@valkosipuli.retiisi.org.uk>
References: <cover.1507989087.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507989087.git.aishpant@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)

Hi Aishwarya,

On Sat, Oct 14, 2017 at 07:24:00PM +0530, Aishwarya Pant wrote:
> Patch series performs minor code cleanups using coccinelle to simplify memory
> allocation tests and remove redundant OOM log messages.
> 
> Changes in v2:
> Rebase and re-send patches
> 
> Aishwarya Pant (2):
>   staging: atomisp2: cleanup null check on memory allocation
>   staging: atomisp: cleanup out of memory messages

Thank you for the update, but the patches still don't apply.

Some patches have been merged since I last reviewed these and I've already
sent a pull request for the branch.

Could you rebase your patches on this branch, please?

<URL:https://git.linuxtv.org/sailus/media_tree.git/log/?h=atomisp-next>

Normally it'll be "atomisp".

-- 
Kind regards,

Sakari Ailus
e-mail: sakari.ailus@iki.fi

