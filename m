X-GM-THRID: 6465611589668044800
X-Received: by 10.46.89.153 with SMTP id g25mr1523531ljf.20.1505393021462;
        Thu, 14 Sep 2017 05:43:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.64.203 with SMTP id r72ls397074lje.41.gmail; Thu, 14 Sep
 2017 05:43:40 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD6pdneUdv0X1df4eTIvtf8anQU+H9M+CznkNV1nCotTz2Z09nMCo5MM5f10EhsmtLNLNOt
X-Received: by 10.25.229.18 with SMTP id c18mr1854719lfh.1.1505393020178;
        Thu, 14 Sep 2017 05:43:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505393020; cv=none;
        d=google.com; s=arc-20160816;
        b=z8OVFfEDJv/Yi76zmFIsdKdQSYleDL7y3TWn1DKiBk29nwh6/UcJ+9kuf86F4gp1D+
         t2GNnQz3obHgQETb6v9GHdw3xCtTVl0kXeH+GnMhWQOYfcsjVaKn+3HJhNiCjsSK1WvM
         kWva04rxYv4OvSlw/HJQiEdkjJT1FIjtEBlvgmHcighqUZoMGG0aIV0Zy6FtPPCCE1UA
         8yQhlgdeMNjp/Q9kb+GlAmuQNey5vtdVInWjrkZp1doFctsUtwqfiStLdcwhDqvVL3O1
         R0R2zEu74SUvSBI9Ayzjw2xakAnBHQTkRroFAUZsMlD30dFWlrCxK0zQz/DR9mleZ/SZ
         M3Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=I0W1gb1/tDAxU+gCvHcOtlMSk37+dt3+PK3pma7Z3bQ=;
        b=t9PA16pt1TVdlYRgE7rcud9/suEM9V52zhKxTuXBZCconnEodoleF3M75ujvRFAM8n
         Tm9qhE6tdv9lBzRwtUBhiGu+13ha0pckJAim88dn6nYG0zXfbAuFRN1M8jur++0t6gXN
         yMgeLwEU46iySX+8QNciUi3kCkNRjknvQnD9rcU2kD9JdELimmpfY4sDHQKGQYSfEwNr
         0XBXgfcNQnUk9JfDLhpxbJGwBkN+zJFQVLdxlYU3WmexoN796eVvkFCgguH20QV414F+
         z7XndgjsIBdb1s3AlIk8LqwQC8vIRp4ovZM94r2cpNVEUgD52JOIZ4ExTG751Du7K4Mm
         EP9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 200si12454wmj.0.2017.09.14.05.43.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 05:43:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,392,1500933600"; 
   d="scan'208";a="291075257"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 14:43:39 +0200
Date: Thu, 14 Sep 2017 14:43:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: fix macro definitions
 warnings
In-Reply-To: <1505392496-10261-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709141439350.3185@hadrien>
References: <1505392496-10261-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> @@ -1304,7 +1306,7 @@ struct lu_buf {
>  };
>
>  #define DLUBUF "(%p %zu)"
> -#define PLUBUF(buf) (buf)->lb_buf, (buf)->lb_len
> +#define PLUBUF(buf) ((buf)->lb_buf, (buf)->lb_len)

This does not look right.  () makes something into a single expression.
While there is a , operator that builds a single expression, it seems much
more likely that this is intended to be a pair of adjacent arguments.

To be absolutely sure, one should check the usage sites, but as far as I
can tell this macro has no uses.  So you could just drop it instead.  You
would need to be sure that the files that include this file still compile.
Dropping this macro should be done in a different patch than the other
changes, because the issue is not the same at all.

julia

