X-GM-THRID: 6609200682225369088
X-Received: by 2002:a05:660c:70b:: with SMTP id l11mr16316664itk.5.1538993371452;
        Mon, 08 Oct 2018 03:09:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a81:: with SMTP id v123-v6ls102539ita.6.gmail; Mon, 08
 Oct 2018 03:09:30 -0700 (PDT)
X-Google-Smtp-Source: ACcGV619Y92uFaRm8huZUZM2UlbZdXCSPRQ446ceN4893YrMPUwy77DbfGZQKgWStNBRCCT6y8Nt
X-Received: by 2002:a05:660c:485:: with SMTP id a5mr8550935itk.30.1538993370406;
        Mon, 08 Oct 2018 03:09:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538993370; cv=none;
        d=google.com; s=arc-20160816;
        b=UIycS4M9wNmC9mngAOwTOBbXKyUyNdtqcUqkC0izFUk22xIZ2tvS5ENRZsnYC+nyW8
         tXVS8SsK2YFDVLDVwPDlnOm4CVuSTd7t3qKhDzPsOnFLO6yRJNA9iz2rPNwuQ4Hui97C
         dFxBVHCBQ+Le9SOCB04aPmWDiJ8M0iFVZaHBrHiX7r4aVACtp6LGnHBU8FcWFAmxPSET
         0MHBG13qEcbfQcPLwwT2fIfOltkkqKyX+4nq6rryVSlecXNBv8SJdg2ZKN/USm0ReUEN
         fUFpcBiVF9o6I1nnGa6l5yzhi9lUtLse47RtCnDrF00iC97tOkQhMuUTV0aOSLuCNSLh
         5dUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=+h1Xl2THm0gROEChacp6cxpMEz2rujsVo5G8a3Xg7Q4=;
        b=WcqGI56Jqdb/NMr4qM0/fR+Sg7Ttg+B1yOvJGDbPOJPvYi+mfq8eMZLiCteCR0fvDf
         LpHy1/QA31QUxnLddeFKhS0WIe7U8Wq9oESyvUeYp/dUg6EwlOUQGLWWHb6Iq0JxAAd6
         lvpG5VoJSpHpZkJlSJQY4wzmhHyZThTsT/Gyxh5Gf1PScKLR/d7n2/+Uv11ymJ/BMX6I
         UIQbsSDa+SOf+wRAOs5xETWhUIjJgem74twZIUXxdnJY/m02zYyIzXDRctw8kQGGvmWQ
         NdLolrk0BuYqnlYSpR3Yn7NnuHRpjgfqRsgXXV0PYqc77ahrTyGV03d5b/oFxmn2c1/u
         qgVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 173.203.187.64 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp64.iad3a.emailsrvr.com (smtp64.iad3a.emailsrvr.com. [173.203.187.64])
        by gmr-mx.google.com with ESMTPS id b133-v6si518696itc.3.2018.10.08.03.09.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 03:09:30 -0700 (PDT)
Received-SPF: neutral (google.com: 173.203.187.64 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) client-ip=173.203.187.64;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 173.203.187.64 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Received: from smtp17.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
	by smtp17.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id D115825FB6;
	Mon,  8 Oct 2018 06:09:29 -0400 (EDT)
X-Auth-ID: siepeng@mev.co.uk
Received: by smtp17.relay.iad3a.emailsrvr.com (Authenticated sender: siepeng-AT-mev.co.uk) with ESMTPSA id 5467125F5E;
	Mon,  8 Oct 2018 06:09:29 -0400 (EDT)
X-Sender-Id: siepeng@mev.co.uk
Received: from [10.0.0.185] (remote.quintadena.com [81.133.34.160])
	(using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
	by 0.0.0.0:465 (trex/5.7.12);
	Mon, 08 Oct 2018 06:09:29 -0400
Subject: Re: [Outreachy kernel][PATCH v7] staging:comedi:comedi_pci.h Prefer a
 maximum 75 chars per line
To: bhanu20anu@gmail.com, outreachy-kernel@googlegroups.com
Cc: hsweeten@visionengravers.com, gregkh@linuxfoundation.org
References: <1d352f7b-f146-73af-23bc-5301c9cd035a@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <62c732c8-8f6d-6a2c-3256-ba3386444f76@mev.co.uk>
Date: Mon, 8 Oct 2018 11:09:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1d352f7b-f146-73af-23bc-5301c9cd035a@gmail.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 07/10/18 12:32, Bhanusree wrote:
> comedi_pci_auto_config() function prototype is exceeding more than
> 75 characters per line. Adjusted to 75 chars to improve readability
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>

I've never heard of that preference for function prototypes to not 
exceed 75 columns.  Where does it come from?

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

