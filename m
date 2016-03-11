X-GM-THRID: 6258988137630924800
X-Received: by 10.140.25.227 with SMTP id 90mr8925959qgt.17.1457732117151;
        Fri, 11 Mar 2016 13:35:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.82 with SMTP id d79ls1476387iod.24.gmail; Fri, 11 Mar
 2016 13:35:16 -0800 (PST)
X-Received: by 10.66.119.197 with SMTP id kw5mr8884708pab.15.1457732116833;
        Fri, 11 Mar 2016 13:35:16 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si1546008pfa.2.2016.03.11.13.35.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:35:16 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7DC9FCAB;
	Fri, 11 Mar 2016 21:35:16 +0000 (UTC)
Date: Fri, 11 Mar 2016 13:35:16 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: gs_fpgaboot: Use kernel
 type 's32' over 'int32_t'.
Message-ID: <20160311213516.GA20170@kroah.com>
References: <20160306091055.GA2252@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160306091055.GA2252@sandhya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 06, 2016 at 02:40:55PM +0530, Sandhya Bankar wrote:
> Use kernel type 's32' over 'int32_t'. 

Are you sure it can't just be 'int'?


