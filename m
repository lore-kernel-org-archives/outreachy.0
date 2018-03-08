X-GM-THRID: 6530656197776769024
X-Received: by 10.223.180.86 with SMTP id v22mr2626992wrd.1.1520538815933;
        Thu, 08 Mar 2018 11:53:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.163.205 with SMTP id m13ls1519324wrb.0.gmail; Thu, 08 Mar
 2018 11:53:35 -0800 (PST)
X-Google-Smtp-Source: AG47ELsaZyzA/7vWoO1nLvaPH92/BN5fikxKuWxjsVCUfwtwzesMCmHNxkKSXKhvJ67H6chGsA8D
X-Received: by 10.223.188.141 with SMTP id g13mr2559722wrh.16.1520538815145;
        Thu, 08 Mar 2018 11:53:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520538815; cv=none;
        d=google.com; s=arc-20160816;
        b=G5//C6g62yy4f5mH2V3d6AaQzgg8aAweyzo0X9a9RLgD6JVD0ay4scIEIX3yFgP7G5
         IjSZh8+/ZAHO4kIuPn22YC0t2rPxFAo1MvlGPaYrK67ELPVNwAdPhsAbSe8XIvCgZtP0
         9ymqISfyNQ+4Ag9x4by6f+eqihoQzZEnPlSTAhMekUOmGoN1ofvANpMYd/ehWBW4Si/m
         EFiB8n5yvlcB2NYDSdD7MD4rGq/3XR0d4uCAphBGjCeDFA7p6i09wZV+t9NRV73+IFdw
         n1dALNQHdes2iHg9puykuweWnbWGzBou/WlN4JMLJVu5EU6jkMXGTaUKXvwQX5ChmHcg
         uEKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=T2vTGJ41soWhEUY8ePryHXzCwwcONqONfwMjf2FuE8Q=;
        b=tbJkcR4Ezie8gxG3hZi/QVrmgVBg9VSwG1tKsNm1OY4QM6GLJfOX/ynN52z/JCCad6
         3nonF/IPV0fuw1nPOehJxxmyCGl1zVVIiSXFNzd0GgzIrE7cdAzbf/c2snTdL0NS0f//
         yLyVD/CwQHHAXHlr2RGv1kZSTvUhehUVSJMsfcQjpM5KzkGsAXZgg8yb9AxTzjOK4WbC
         WKmO30PjI+epE83dsoNnUOMYteEcvVcfOz6K+PX1NfF1b7ez0jdz15Y4gUqayUGSQlSd
         BjymwmL/lTyzGGLQ0WCBYTVxjY8nlq/z+wEAgJRQo0QMhXGP44jWXrFjkoT78L2RZV4j
         PFLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [185.233.100.1])
        by gmr-mx.google.com with ESMTPS id a139si4209wma.4.2018.03.08.11.53.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 11:53:35 -0800 (PST)
Received-SPF: neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=185.233.100.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 17A7411F97;
	Thu,  8 Mar 2018 20:53:34 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GhoOhHoLk_dS; Thu,  8 Mar 2018 20:53:33 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (static-176-158-111-12.ftth.abo.bbox.fr [176.158.111.12])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 7F62110D87;
	Thu,  8 Mar 2018 20:53:33 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.90_1)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1eu1bY-0002A2-7L; Thu, 08 Mar 2018 20:53:32 +0100
Date: Thu, 8 Mar 2018 20:53:32 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: gregkh@linuxfoundation.org, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: speakup: Replace simple_strtoul with kstrtoul
Message-ID: <20180308195332.2hao4ys737ubr275@var.youpi.perso.aquilenet.fr>
References: <1520538552-16322-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1520538552-16322-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Nishka Dasgupta, on ven. 09 mars 2018 01:19:12 +0530, wrote:
> Replace simple_strtoul with kstrtoul. Issue found with checkpatch.

Again, they are not the same, we need start to be updated.

