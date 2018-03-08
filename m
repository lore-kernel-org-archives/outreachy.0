X-GM-THRID: 6530656197776769024
X-Received: by 10.28.128.141 with SMTP id b135mr2386725wmd.15.1520538337084;
        Thu, 08 Mar 2018 11:45:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.12.195 with SMTP id 186ls380wmm.8.canary-gmail; Thu, 08 Mar
 2018 11:45:36 -0800 (PST)
X-Google-Smtp-Source: AG47ELuCjHvpF73T5PWigxX/wM1YTW+fuHiMCyhSbmR5L73HWADAuMcNjk0AxxrwtSmiAuB+nENz
X-Received: by 10.28.128.141 with SMTP id b135mr2386658wmd.15.1520538304020;
        Thu, 08 Mar 2018 11:45:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520538303; cv=none;
        d=google.com; s=arc-20160816;
        b=qSc3wkRjVe/whGBJj8BAJmMew65WAcKYGWKwHjxMPybXCHwicfTf5yqe0yaT6z6AM3
         VK381oBjtG+vwxpnzwplrK72l6jRU6KvdK71TBkzDGh5MN+sUTKtoBmiXaN02nN4Al8W
         tjeVOEjOmVSnuwDOIJfOSPNzlPdp0dTYyzTkscH/tqSXLtFhREnY5n+vs4fYiWBc+xoP
         mfcIhAlvXeFm3nl/Oy6QouPhvO0gHiZK2dB2S4BLmwN/ZPMa/YsvXIyF76xoj32AYjix
         ir9mNgE6CeP2y8nuCtbvEQ80X1G4VM1UOYehiXo4+ZKomZIfC7OMYEUop7Yw8ryJV35A
         U9Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=slkh9UJJX4fMKFyGYkfaBk2ECsi/vR6LqhC0P3GtosI=;
        b=zWcZLki3jroiVaFZ9c6Tiexm9X+54RTz2HEwWFcL6WwkHzGqaZ9Bia4pQ/vjNHdbmp
         Jp8AyRgqYSzmz3tHZgNLxM/rzGCsB6x+77QVoy61j/HP2QcPoy/hrCm0W/Y37X2HxNUa
         YoOkxTOWwmo3jQq2dDBaqXp/5fGOEMSyq6LUO91mIa7+u7GWMxM3cI8eo4jbNM8S8+dv
         AbApabx69uwWy8VGwpBx1B6vQTULjoTL0LiqtiGvWeLxzVxEjcF/B9RLA0ka6gH3vOfz
         WFq91lM/Gj5hzIcnAQY8IdR6+T8IhYxQ02K/6zwYH19P/migEqJREr0w0f0EIQEfa0FF
         kVTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [185.233.100.1])
        by gmr-mx.google.com with ESMTPS id m29si875891wrb.1.2018.03.08.11.45.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 11:45:03 -0800 (PST)
Received-SPF: neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=185.233.100.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 6D70A11F97;
	Thu,  8 Mar 2018 20:45:03 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NBlecId2qeZM; Thu,  8 Mar 2018 20:45:02 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (static-176-158-111-12.ftth.abo.bbox.fr [176.158.111.12])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id C89F010BEB;
	Thu,  8 Mar 2018 20:45:02 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.90_1)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1eu1TI-0001t6-Jt; Thu, 08 Mar 2018 20:45:00 +0100
Date: Thu, 8 Mar 2018 20:45:00 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: gregkh@linuxfoundation.org, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: speakup: Replace simple_strtoul with kstrtoul
Message-ID: <20180308194500.4pha7j7n66ka3o6c@var.youpi.perso.aquilenet.fr>
References: <1520538226-15590-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1520538226-15590-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Nishka Dasgupta, on ven. 09 mars 2018 01:13:46 +0530, wrote:
> Replace simple_strtoul with kstrtoul. Issue found with checkpatch.

kstrtoul is not the same as simple_strtoul. Here we need to have cp
updated.

Samuel

