X-GM-THRID: 6202217104778723328
X-Received: by 10.129.88.87 with SMTP id m84mr28417840ywb.3.1444105294458;
        Mon, 05 Oct 2015 21:21:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.157 with SMTP id f29ls1808941ioi.44.gmail; Mon, 05 Oct
 2015 21:21:34 -0700 (PDT)
X-Received: by 10.66.246.198 with SMTP id xy6mr28739375pac.36.1444105294155;
        Mon, 05 Oct 2015 21:21:34 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id w5si3810152pbt.1.2015.10.05.21.21.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 21:21:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ex6so197297878pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 21:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=lw9OE9oRVkDJ0tGzlbbs6Ky8beCFj5tl7Tw7DBLgbLc=;
        b=uwhnyMq9zNxFebpTwqzGSh5Qvn7NHRg7MIRcbkq6WAduODwgK7YfQjQIo0wy+a74O8
         EyCVRfK++gFcIOu6XYtlyNVPryb2JmGi1gwea2/iJz5qAltGuzy1okHipgRfDQFkg6/x
         d042zxDiHwBe5RRcss1x03nBDK6F8dtkrE3fX7RMKkZsCLyOxP1YH+qEwsuFqOlqifuz
         PV7880dXrl9kx8Cdpyz08zB1rjmdRQOpL4sHyam0wzhrWOsmEGLZJjL1gCiYZeKvICdw
         Hr/uoJ9WNvUl4ddoyYayW8WAMMLr3FwvXU+oWawMtkIRjOaBycCNzfY5UelpfzBZY580
         mngA==
X-Received: by 10.68.190.170 with SMTP id gr10mr43681049pbc.91.1444105293951;
        Mon, 05 Oct 2015 21:21:33 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id b7sm28679816pas.31.2015.10.05.21.21.32
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 05 Oct 2015 21:21:33 -0700 (PDT)
Date: Tue, 6 Oct 2015 09:51:22 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: rf.c: Fixed comment
 style warnings
Message-ID: <20151006042122.GA4745@sudip-pc>
References: <1444066179-6745-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1444066179-6745-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Oct 05, 2015 at 08:29:39PM +0300, Hatice ERT�RK wrote:
> Fixed 'Block comments use a trailing */ on a separate line' and 'Block comments use * on subsequent lines' checkpatch warnings
> 
> Signed-off-by: Hatice ERT�RK <haticeerturk27@gmail.com>
> ---
Please test your patch using checkpatch before sending. This patch is
having trailing whitespaces in 5 different places. :(

regards
sudip

