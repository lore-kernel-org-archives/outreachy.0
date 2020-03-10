X-GM-THRID: 6802607426621145088
X-Received: by 2002:a05:651c:10e:: with SMTP id a14mr458489ljb.134.1583871516014;
        Tue, 10 Mar 2020 13:18:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:550:: with SMTP id q16ls1606786ljp.1.gmail; Tue, 10
 Mar 2020 13:18:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtxPl8uXVMCdY7+KLjZ663y4VY7J1qsQ00oS9IFti+uHzWk8kMVP6nwHrsTv4QjgBIhbdjS
X-Received: by 2002:a2e:b88b:: with SMTP id r11mr12465653ljp.116.1583871513870;
        Tue, 10 Mar 2020 13:18:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583871513; cv=none;
        d=google.com; s=arc-20160816;
        b=JTM/ALvKQKy4yVv0YHemWLgnsz6/Gsr6vOwr8x6EvpeUvEw6yXPQ/ZBaQ+84rfnKpm
         e01LkHckPuKxGUeT1jFMjI2wMO8KycXSgmTtHEYB/RbNVKgiBjdxhgONk1Iy/vn3LPKO
         a/JpTdPljbKGgcCdngQUNjvGr+PLtC9gUTpDd4UJEuattHRJGYtd/hO+F0cGmBWvSo6A
         DxAQPeEqAcgaLngwBy3GsQP2jDdt8TdfwMOTz+sMmqDx+X+Dn62UhrxVE57e+GGJL3if
         ePb6Js45w3xrn2Mz54WeR31dueqwbGjxJeyvmYDQaMW9xtzvLb86lSdE/R7Wgv18wHW1
         IrYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2L7zWeKqzBJY7dq4ixBhvnUJMaunLEmCCQBKYX+wYuc=;
        b=xDXGFKk/zQSy3EOG+VGkN6RaFhAGSYvljHzc7dhmfcqDq1VLdwIGe9WSCVJiQvFRC8
         EBWkkenTzMaGLaUAURgbytiEduuwWPcm+8M1sM5UR/YoVhN4NVK1MjzuzIaYIaJZdMn6
         hbFJ9NVi/QL3SjA+ds8qsP/Wvloiy2hTzH9CApo8f8Cv+weBbcRrQ3EMQvjTC0qYddK8
         0QpbySIDcwGGYet8JF6/B0brO8yfA2LWaXmko+Z4Ucou1RM5jBHsFofzxlp4uAVt9NhH
         4hJ2/oj3gCHBdtaWXgNW7VSNRmsxknpfqqYiZNnU6+l7lAWlV0NYrUHlCcCsaTrrwhi7
         we8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r6si808739ljk.1.2020.03.10.13.18.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 13:18:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,538,1574118000"; 
   d="scan'208";a="341930182"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 21:18:32 +0100
Date: Tue, 10 Mar 2020 21:18:32 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk, 
    hsweeten@visionengravers.com, gregkh@linuxfoundation.org, 
    daniel.baluta@gmail.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: comedi: dt2801: remove
 old unused code
In-Reply-To: <20200310201419.GA3417@deeUbuntu>
Message-ID: <alpine.DEB.2.21.2003102117510.2313@hadrien>
References: <20200310201419.GA3417@deeUbuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Wed, 11 Mar 2020, Deepak R Varma wrote:

> There are two #if 0 blocks that have no recent history of any change.
> Remove those code blocks for improved readability of the code.
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> Changes in V3:
> 	- moved patch revision comments for v2 into this area
> Changes in V2:
> 	- Removed extra spaces after colon in patch description
> ---

It doesn't hurt anything, but you don't need this ---

julia

