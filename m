X-GM-THRID: 6200616774953598976
X-Received: by 10.13.249.198 with SMTP id j189mr7695973ywf.27.1443700674780;
        Thu, 01 Oct 2015 04:57:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.199.7 with SMTP id jg7ls594842obc.11.gmail; Thu, 01 Oct
 2015 04:57:54 -0700 (PDT)
X-Received: by 10.182.106.228 with SMTP id gx4mr7753536obb.34.1443700674470;
        Thu, 01 Oct 2015 04:57:54 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id el2si886782pbb.0.2015.10.01.04.57.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 04:57:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id lk4so72381975pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 04:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=LViz00OAMfhHfKyZF1wxpaz7eGEq/KPuumXIK7wMmPE=;
        b=v/DpZZTNwF0v3t8pCYWQP9nxnKryjBk5zKv5JwmDbAH8cSntmkzRs+5LSilLr8Rqb0
         yyN/W9Jc/QNWKViqg8/Qw/ah/JcvKz0sR3NnzlDllHin/n40fBb9GTLol8WtHRa5h/7X
         V+ZXKYZuuxnJK4hFix8blVDGVDAoKZ2sNEsM27sRT4SG7j/C4R5RnEHJKeQskY8HYsZC
         MZxqMd40gLEkFkTpG7tgjYfXLmdi94M5JkzlIr3Pry2xv8GauYwB8IsYG6px+7aj8pK7
         z8peoEs5zAEgX8T0QPAv3r1gl7bq76Y5BZrov/26YVJsfRAkZWRemGtXYZvAEedtgCD3
         ntvQ==
X-Received: by 10.68.231.5 with SMTP id tc5mr11875616pbc.54.1443700674324;
        Thu, 01 Oct 2015 04:57:54 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.244.224])
        by smtp.gmail.com with ESMTPSA id xd10sm6331561pab.25.2015.10.01.04.57.52
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 01 Oct 2015 04:57:53 -0700 (PDT)
Date: Thu, 1 Oct 2015 17:27:49 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Remove
 unused code
Message-ID: <20151001115749.GB10220@sudip-pc>
References: <1443693764-10810-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443693764-10810-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 01, 2015 at 03:32:44PM +0530, Shraddha Barke wrote:
> Discard the functions as they are not used anywhere throughout the
> kernel
> 
> Problem found using sparse.
> 
This also has been done by:
709e280afae5 ("staging/lustre: Remove unused lu_object functions.").

Which tree you are using?

regards
sudip

