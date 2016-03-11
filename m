X-GM-THRID: 6258126434142781440
X-Received: by 10.129.106.9 with SMTP id f9mr8684375ywc.16.1457732568238;
        Fri, 11 Mar 2016 13:42:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.133 with SMTP id w5ls2820076qge.29.gmail; Fri, 11 Mar
 2016 13:42:47 -0800 (PST)
X-Received: by 10.31.52.207 with SMTP id b198mr8812561vka.5.1457732567650;
        Fri, 11 Mar 2016 13:42:47 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si1549264pfa.2.2016.03.11.13.42.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:42:47 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4EE9569;
	Fri, 11 Mar 2016 21:42:47 +0000 (UTC)
Date: Fri, 11 Mar 2016 13:42:47 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging:xgifg:vb_table.h: Fix
 block comments use * on subsequent lines
Message-ID: <20160311214247.GA3338@kroah.com>
References: <20160304213358.GA7537@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160304213358.GA7537@domino-MS-16Y1>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Mar 04, 2016 at 11:33:58PM +0200, Muraru Mihaela wrote:
> This patch solve a multi-line comment style issue, by adding * for every  subsequent lines ,
> the preferred style for multi-line comment as it is mentioned in Documentation/CodingStyle.
> 
> It also stop the 'Block comments use * on subsequent lines' , checkpatch.pl warnings.
> 
> Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> 

Doesn't apply to my tree at all :(

