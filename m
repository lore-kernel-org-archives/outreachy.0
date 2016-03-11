X-GM-THRID: 6259022547869761536
X-Received: by 10.107.184.67 with SMTP id i64mr8853870iof.24.1457732141778;
        Fri, 11 Mar 2016 13:35:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.14 with SMTP id q14ls1295189ioe.44.gmail; Fri, 11 Mar
 2016 13:35:41 -0800 (PST)
X-Received: by 10.66.147.133 with SMTP id tk5mr8466352pab.8.1457732141410;
        Fri, 11 Mar 2016 13:35:41 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si1666522pac.1.2016.03.11.13.35.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:35:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2298ACBE;
	Fri, 11 Mar 2016 21:35:41 +0000 (UTC)
Date: Fri, 11 Mar 2016 13:35:40 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: gs_fpgaboot: Fix multiple
 coding style issues.
Message-ID: <20160311213540.GB20170@kroah.com>
References: <20160306112424.GA5633@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160306112424.GA5633@sandhya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 06, 2016 at 04:54:24PM +0530, Sandhya Bankar wrote:
> Fix below coding style issues.
> - Fix alignment to match open parenthesis.
> - Use space around '+'. 
> - Remove unnecessary blank lines. 

This should be 3 different patches.

Also you have trailing whitespace in your changelog comments :(


