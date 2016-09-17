X-GM-THRID: 6331255217033576448
X-Received: by 10.98.19.69 with SMTP id b66mr1774806pfj.40.1474135590159;
        Sat, 17 Sep 2016 11:06:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.10 with SMTP id 10ls8526267oty.10.gmail; Sat, 17 Sep
 2016 11:06:29 -0700 (PDT)
X-Received: by 10.157.46.86 with SMTP id c22mr1673085otd.109.1474135589612;
        Sat, 17 Sep 2016 11:06:29 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si3653153pab.2.2016.09.17.11.06.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 11:06:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D331189E;
	Sat, 17 Sep 2016 18:06:28 +0000 (UTC)
Date: Sat, 17 Sep 2016 20:06:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 0/2] fix multiple coding style issues
Message-ID: <20160917180632.GA26747@kroah.com>
References: <cover.1474119676.git.gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474119676.git.gs051095@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Sep 17, 2016 at 07:48:19PM +0530, Gargi Sharma wrote:
> Patch 1 fixes the issue detected by checkpatch. Patch 1 modifies
> multi-line comments to follow kernel coding style guide.
> Patch 2 uses kernel coding style guide for macros.

The subject line here is odd, it doesn't say where in the kernel your
patches are for.  Next time can you fix that up?  Don't worry about it
for these.

thanks,

greg k-h

