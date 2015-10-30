X-GM-THRID: 6211220863007588352
X-Received: by 10.50.110.6 with SMTP id hw6mr728012igb.7.1446179009262;
        Thu, 29 Oct 2015 21:23:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.149.147 with SMTP id x141ls486634iod.3.gmail; Thu, 29 Oct
 2015 21:23:28 -0700 (PDT)
X-Received: by 10.68.92.35 with SMTP id cj3mr4522378pbb.11.1446179008771;
        Thu, 29 Oct 2015 21:23:28 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id vy6si547481pbc.1.2015.10.29.21.23.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 21:23:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv9so63822459pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 21:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=UtQp+NtWs8k+NifpNXbtoz3ldLSzczPIUnqKwvXdRWk=;
        b=s5oaSH2BWXmFpycEptpPAco4KJ4FCKhlKSVicjfe3lWfNDQdtKsw8HeUUkhtIBE8ov
         DPIO0sQcaRabmAix9ipHNOJe/ohMOT9M0xfTjJ6uIa3Klx8RX7JjnN3fMDVcl/2Wwy0q
         VsSQ7R11KwLcPBx4QsQAGsfni4P/QaIIwXYLiNYM3TcqDYlpGNd1uveRoLLv47BpIGAY
         xkWvVIRODVsjaWXlVwZ+u5ktNQfVISVHfctlaXV/9ab2ymh2ztqSZHOvxB2c9K237zX5
         Fwc5BXgjFa3x787mFwuLupC35MU+XyBAXIh9prIvuLTkwYSScSx/iLWHHoZqy/QjxfLZ
         gpPA==
X-Received: by 10.66.167.101 with SMTP id zn5mr6296791pab.48.1446179008628;
        Thu, 29 Oct 2015 21:23:28 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.170.95])
        by smtp.gmail.com with ESMTPSA id or3sm5188583pbb.56.2015.10.29.21.23.26
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 21:23:27 -0700 (PDT)
Date: Fri, 30 Oct 2015 09:53:18 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Burcin Akalin <brcnakalin@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: nvec: Do not use
 multiple blank lines.
Message-ID: <20151030042317.GA3407@sudip-pc>
References: <1446162542-1037-1-git-send-email-brcnakalin@gmail.com>
 <1446162542-1037-2-git-send-email-brcnakalin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1446162542-1037-2-git-send-email-brcnakalin@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 30, 2015 at 02:49:02AM +0300, Burcin Akalin wrote:
> Remove multiple blank lines. Problem found using checkpatch.pl
> "CHECK: Please don't use multiple blank lines"
> 
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
> ---

I am confused. You have sent this patch previously and it has already
been accepted by Greg and has been applied by:
df2f4c4e4b79 ("staging: nvec: Do not use multiple blank lines.")

regards
sudip

