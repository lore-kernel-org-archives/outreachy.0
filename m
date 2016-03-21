X-GM-THRID: 6262248427873107968
X-Received: by 10.107.18.68 with SMTP id a65mr25185803ioj.16.1458593674521;
        Mon, 21 Mar 2016 13:54:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.10 with SMTP id 10ls4025214qgm.23.gmail; Mon, 21 Mar
 2016 13:54:33 -0700 (PDT)
X-Received: by 10.129.83.85 with SMTP id h82mr18910938ywb.18.1458593673819;
        Mon, 21 Mar 2016 13:54:33 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si4243899pac.1.2016.03.21.13.54.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 13:54:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 392662C;
	Mon, 21 Mar 2016 20:54:33 +0000 (UTC)
Date: Mon, 21 Mar 2016 16:54:32 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/6] staging: rtl8188eu:
 usb_halinit.c: fixes multiple errors and warnings
Message-ID: <20160321205432.GA25708@kroah.com>
References: <cover.1458043217.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458043217.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 15, 2016 at 09:02:07AM -0300, Juliana Rodrigues wrote:
> This patchset aims to fix multiple warnings and errors 
> caused by malformed comments and coding style. There are 
> many old comments in usb_halinit.c. Most of them were 
> reformatted to match convention, but an evaluation 
> is needed to see if they are still relevant.
> 
> Changes in v2:
>   - Fixed typo

What typo?


