X-GM-THRID: 6395543096504877056
X-Received: by 10.99.109.203 with SMTP id i194mr5993203pgc.134.1489084666109;
        Thu, 09 Mar 2017 10:37:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.31.133 with SMTP id f127ls1916201iof.27.gmail; Thu, 09 Mar
 2017 10:37:45 -0800 (PST)
X-Received: by 10.99.102.68 with SMTP id a65mr6998705pgc.68.1489084665196;
        Thu, 09 Mar 2017 10:37:45 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si1323639pfz.1.2017.03.09.10.37.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:37:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9EE50B4C;
	Thu,  9 Mar 2017 18:37:44 +0000 (UTC)
Date: Thu, 9 Mar 2017 19:37:36 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org,
	Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Chris Brannon <chris@the-brannons.com>
Subject: Re: [PATCH] staging: speakup: fix "Alignment match open parenthesis"
Message-ID: <20170309183736.GA15627@kroah.com>
References: <20170309165330.GA21513@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170309165330.GA21513@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Thu, Mar 09, 2017 at 10:23:30PM +0530, Arushi Singhal wrote:
> Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c     |  2 +-
>  drivers/staging/speakup/kobjects.c | 40 +++++++++++++++++++-------------------
>  2 files changed, 21 insertions(+), 21 deletions(-)

Also does not apply to my tree :(

greg k-h

