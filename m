X-GM-THRID: 6329540698124058624
X-Received: by 10.66.141.7 with SMTP id rk7mr538891pab.26.1473771558167;
        Tue, 13 Sep 2016 05:59:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.21.49 with SMTP id u46ls1014930otf.43.gmail; Tue, 13 Sep
 2016 05:59:17 -0700 (PDT)
X-Received: by 10.200.41.168 with SMTP id 37mr519985qts.26.1473771557103;
        Tue, 13 Sep 2016 05:59:17 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h124si3462178pfe.0.2016.09.13.05.59.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 05:59:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1ED759B5;
	Tue, 13 Sep 2016 12:59:15 +0000 (UTC)
Date: Tue, 13 Sep 2016 14:59:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: bus: Open brace '{' should
 be on the previous line.
Message-ID: <20160913125922.GB31694@kroah.com>
References: <20160912201106.GA2870@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160912201106.GA2870@sandhya>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 13, 2016 at 01:41:06AM +0530, Sandhya Bankar wrote:
> Open brace '{' should be on the previous line.This error is found by checkpatch.pl script.

Same comment here :(

