X-GM-THRID: 6339198872310513664
X-Received: by 10.107.134.82 with SMTP id i79mr7293328iod.40.1476024082274;
        Sun, 09 Oct 2016 07:41:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.105 with SMTP id 96ls8353417ott.41.gmail; Sun, 09 Oct
 2016 07:41:21 -0700 (PDT)
X-Received: by 10.13.246.67 with SMTP id g64mr3163903ywf.39.1476024081871;
        Sun, 09 Oct 2016 07:41:21 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 80si3728609pfw.0.2016.10.09.07.41.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:41:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id F110D25A;
	Sun,  9 Oct 2016 14:41:20 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:41:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/4] staging: rtl8188eu: core: removes extra blank lines
Message-ID: <20161009144128.GB25227@kroah.com>
References: <cover.1475959255.git.juliana.orod@gmail.com>
 <20161008204909.GA8819@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161008204909.GA8819@spock>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Oct 08, 2016 at 05:49:09PM -0300, Juliana Rodrigues wrote:
> Removes unecessary blank lines that were causing checkpatch issues.

Only one blank line was removed :)


