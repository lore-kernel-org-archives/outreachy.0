X-GM-THRID: 6397025355819909120
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.129.130.7 with SMTP id s7mr15492404ywf.134.1489424033889;
        Mon, 13 Mar 2017 09:53:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.57.77 with SMTP id l74ls1673006ita.5.canary-gmail; Mon, 13
 Mar 2017 09:53:51 -0700 (PDT)
X-Received: by 10.99.250.21 with SMTP id y21mr14943416pgh.21.1489424031810;
        Mon, 13 Mar 2017 09:53:51 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x22b.google.com (mail-pg0-x22b.google.com. [2607:f8b0:400e:c05::22b])
        by gmr-mx.google.com with ESMTPS id c123si3155408pfa.4.2017.03.13.09.53.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 09:53:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::22b as permitted sender) client-ip=2607:f8b0:400e:c05::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::22b as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22b.google.com with SMTP id 77so65645589pgc.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 09:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2963FG3R7LcpKHp3hT0pL2qfaDd7gd+ypcWrRoX50bk=;
        b=R+uCMhcROqTywABYxU1CyGBRhQhVzg0YX0H+tqj1E8+1Zdh6tS1qU3jwgXcO1bMAIx
         ETF48yn3W+n8XoA4hEIm6sM4AGN4MZnkwjr0f9wGf/zhww5uwhGA6b4986PTdO1UEQjq
         x3mE5CEq3rMOhDestx9UBYwiiIh23Jdaak2+bFHw8fuDBR4lh8l1WLu8NtFKU8qrh9VF
         sX+ki1DCY4ndrfjweMenkREU91TrxtLp0RSt4M77lq6B6ZFJoYr/ICLFaMyRqORVfzVm
         XAtO5vTC65MctIyOdM94y3oIXZLA/jmdRZv/FKEIVevqxfdjbOi9uXatHkiB5vajj6wr
         hrTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2963FG3R7LcpKHp3hT0pL2qfaDd7gd+ypcWrRoX50bk=;
        b=tX+gbYl3FAXlQpOalpCSmpgkVaTlRX1Qf0MniuLWClNWKq9nFsktNlhGibvItLpmGj
         2nVZEp58RKSKNnw/JhaQS2wO2tFHVnLa883CDow4/hqVP4LEXGldRXnj3dVXJ5TWPAkx
         CMHwYJjdGUiTN82THuwK3xsn4+TdEWl4wWSg0vmkCLZdtsMcnugJLoC8pmjaZmvVerHj
         Gfxv5UJgvvSgwRAaJhCBdcfEDQCbiMcsUttIJVctX8+j/DX9j8955KmpdEVEtALrx1oQ
         GObk6TB9cX7LL32b3SUjStNho4EQcxvGRNBUVD5BwbEuzKwR22flDA5JQ9gljHS+t5yL
         eoOg==
X-Gm-Message-State: AMke39nLfCgd0SLexmYXFwWq8NtB/kGbi6zVmmbOfeTK3pD3DkQRleMXKpQB7itpzKLQbQ==
X-Received: by 10.84.254.1 with SMTP id b1mr48535812plm.76.1489424031610;
        Mon, 13 Mar 2017 09:53:51 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id k2sm34001275pga.29.2017.03.13.09.53.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 09:53:51 -0700 (PDT)
Date: Mon, 13 Mar 2017 09:53:50 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] ArushiSinghal
Message-ID: <20170313165349.GB2705@d830.WORKGROUP>
References: <d43fffca-3cc7-4dff-bf23-2936a50436d2@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d43fffca-3cc7-4dff-bf23-2936a50436d2@googlegroups.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 13, 2017 at 09:45:31AM -0700, Arushi Singhal wrote:
> Kindly grant edit privileges.
> 
> Thanks
> Arushi
done
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d43fffca-3cc7-4dff-bf23-2936a50436d2%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.


