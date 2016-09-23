X-GM-THRID: 6333553605214208000
X-Received: by 10.159.34.8 with SMTP id 8mr1515107uad.30.1474646236071;
        Fri, 23 Sep 2016 08:57:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.45 with SMTP id 42ls9031899otg.14.gmail; Fri, 23 Sep
 2016 08:57:15 -0700 (PDT)
X-Received: by 10.13.220.66 with SMTP id f63mr1847341ywe.129.1474646235554;
        Fri, 23 Sep 2016 08:57:15 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si2458568pfw.1.2016.09.23.08.57.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Sep 2016 08:57:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id ADB37C46;
	Fri, 23 Sep 2016 15:57:14 +0000 (UTC)
Date: Fri, 23 Sep 2016 17:57:20 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Laura Abbott <labbott@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
	Riley Andrews <riandrews@android.com>
Subject: Re: [PATCH v2] Fixes: b6e336dbeda8 ("staging: android: ion: Convert
 hi6220 to common platform")
Message-ID: <20160923155720.GB31488@kroah.com>
References: <20160923154221.GA4993@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160923154221.GA4993@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 23, 2016 at 09:12:21PM +0530, sayli karnik wrote:
> The sizeof function must take pointer to the ion_heap structure as an argument
> when allocating memory for ipdev->heaps. This patch changes the sizeof
> argument from (struct ion_heap) to (struct ion_heap *) which is a pointer to
> the structure.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

The "fixes:" line needs to be above the signed-off-by: line, not in the
subject of the patch.  Look at commits in the kernel tree for lots of
examples of how to format this.

third time's a charm?

thanks,

greg k-h

