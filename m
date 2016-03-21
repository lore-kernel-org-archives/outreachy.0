X-GM-THRID: 6262248427873107968
X-Received: by 10.50.47.82 with SMTP id b18mr6655955ign.12.1458593715709;
        Mon, 21 Mar 2016 13:55:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.37 with SMTP id i34ls81278qgf.58.gmail; Mon, 21 Mar
 2016 13:55:15 -0700 (PDT)
X-Received: by 10.129.145.130 with SMTP id i124mr23895506ywg.8.1458593715101;
        Mon, 21 Mar 2016 13:55:15 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tu5si3334181pab.2.2016.03.21.13.55.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 13:55:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8E8DB74;
	Mon, 21 Mar 2016 20:55:14 +0000 (UTC)
Date: Mon, 21 Mar 2016 16:55:13 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/6] staging: rtl8188eu:
 usb_halinit.c: fixed multiple warnings
Message-ID: <20160321205513.GB25708@kroah.com>
References: <cover.1458043217.git.juliana.orod@gmail.com>
 <c5bf96b4d7c7ba75d4eacd7f69c0153ba4ca9352.1458043217.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c5bf96b4d7c7ba75d4eacd7f69c0153ba4ca9352.1458043217.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 15, 2016 at 09:03:12AM -0300, Juliana Rodrigues wrote:
> This patch fixes multiple "line over 80 characters"
> checkpatch.pl warnings and also makes some changes to
> make the code more readable.

The subject: is very vague.  Also only do one type of thing per patch,
this does lots of things all at once :(


