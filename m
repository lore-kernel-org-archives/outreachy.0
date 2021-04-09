X-GM-THRID: 6949252648486830080
X-Received: by 2002:a05:6512:3189:: with SMTP id i9mr7890901lfe.613.1617998967146;
        Fri, 09 Apr 2021 13:09:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5081:: with SMTP id f1ls1987481lfm.2.gmail; Fri, 09 Apr
 2021 13:09:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwpwbpXaZE26RSBP7nnITMWOIQyvPErumvJeXQJfs7EepaFkMC8hfcV7K1Y2D2Lw8eok8nK
X-Received: by 2002:a19:c302:: with SMTP id t2mr11168464lff.150.1617998965408;
        Fri, 09 Apr 2021 13:09:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617998965; cv=none;
        d=google.com; s=arc-20160816;
        b=n+/RWVpsKeOiO5v3qHhCChYhZCNtCLMOHYKE6/jQ5LtZSj3dSMy8nLfiBbouI4tbYx
         qXEGay4Nz/Ax3WUnPPw9z2496SKnModA3ggjcLKkctJ2rbEy76CG72F67qXJuyC15RIC
         uUhdJ+nN1yYhDadLADTQHkY8X9bIurkHopdAKu9WGHEcdrkBnpARo35tYw2Gc5k7bQbn
         hVLHigQijjxbKpb58TgfEwSuCzn0tl0rQnK+OLhP7JjLFn/pTNONRIARicJdf59qVdhn
         GpiU8lcGsm88GeRe5yo58aX7V8N61ga7puRCkEoZxnNXNgmrvHNLcln1Irgnr3qkhz6q
         XWQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=DrPYlq0T8x/+YvUiqECyFqjmdyaOnMya5E9ZbkxogSk=;
        b=M21r9oZ50Bnr5OIEO4Q7UxTk0z+IUVD6sNoQGs7nb6p/hvTweFQMcKwbzfI2iIj+k2
         9kp9wrhk7q2WBO6GSulV7D7thWa3omT7QvKpk1Fq3tRdcQqxvkeCUYEQC8hL9nojQznl
         UI1oCffe/t2QvkMRx1b5WYNSiC9TUBkUHJUaqLGjmjLaYU/k0q+JVy//Sqb/Eo8H2lcP
         t53KHwkbMjHmf7+pzlxtcgBAYS8X6lP5+Xv+4Kpk8ZtaVZtuYzlMqdEhy7SL1T0UxYux
         SmEn81HbRztKTytmCfnRC1VgTbGDVaGJlXIIknB0xkisucJR2Zrp5rbriHVE8sAocxvF
         npjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DWGME8yV;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id p18si237690lji.8.2021.04.09.13.09.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 13:09:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DWGME8yV;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52a.google.com with SMTP id f8so7930469edd.11
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 13:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DrPYlq0T8x/+YvUiqECyFqjmdyaOnMya5E9ZbkxogSk=;
        b=DWGME8yVyyvBQN+U0FP3Lybq9se5bTvcnvvbvGEVdKibW9KYoQQaSlJeS0QPwCBENm
         1V2/5UoAhpsJu0tmXgbC3lQV/i25F2C/q4T80y5XMhsF7h9OZZFPI9Oa3OG8Te1HzVvm
         wpqS8AYWPAW1JkauFtBaaO6jKCcuTCRWCsSltDm92q7ze8NyiZMV/KQ8aVJnOEP4j+Yg
         WBtu68sUuvgh+uLADtG0VFS6A+wwUtRxfCtKlbhT3mqlBO5w1YaYnb872sqG/y7yXQON
         F56DB+nUgW7n/pNItmgpcUeeX0iRBQ7JvOBswUwlJrajxUyKc0kGfOzg6KvlEjIIVLn9
         2rHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DrPYlq0T8x/+YvUiqECyFqjmdyaOnMya5E9ZbkxogSk=;
        b=EWxBr4ZIO32C04hRBxr10ix2HgW48+q/KNncqvkaTdHyM3AjDLu1xtscI5IZ+qubAO
         mu4xcPB82b1+TCCxH/XonDxQzKhYXHGkzc33yziUXXTXxxeS8tabdHEERPB6e/eSZVuR
         1ewZYCDTEhMH4NtABFsdttLPxNA9QHMUdWjYSRRyckOkF07ATAf1MdtVywdMCHxi/0C8
         59YaQ3N4cCHkm6hPcCJ8WMgepPm4by1Q22AWuixeIYXILUPJZCgJb2a2pLvv/LYJOYhq
         GQOPVCPaXh9T85HjZ7KVJTqq+zN4DpKHJ8sGyU5e09zuAF+N6EWyZ6r2uusKmohT+6an
         tqyA==
X-Gm-Message-State: AOAM532fn2BQdxdUr7aaoimLSBvF63dF9WTJJk5QvyW5NyaiPPy2S/OR
	Pg+AHngut4f9WHnhpoma5F/EqttOmg2doFMC
X-Received: by 2002:a05:6402:8c2:: with SMTP id d2mr19444228edz.4.1617998964945;
        Fri, 09 Apr 2021 13:09:24 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id m14sm1995018edd.63.2021.04.09.13.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 13:09:24 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: gregkh@linuxfoundation.org, julia.lawall@inria.fr
Subject: Variables defined, (sometimes) assigned, and never used
Date: Fri, 09 Apr 2021 22:09:23 +0200
Message-ID: <3125862.SBIft5tIRe@localhost.localdomain>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

When compiling with flag W=1 a lot of warnings about variables defined but 
never used show up. If one read the source sometimes it's clear that the 
original author placed them there because she/he wants to use the variable 
for doing something in a future release of the driver. I've also seen a 
comment like /* TODO */ near some unused variables. 

I thought to delete a couple of variables that are declared, may be also 
assigned as a result of some expression, but neither  used within a 
function or returned to the caller.

What to do with those (currently) unnecessary variables? Should we remove 
them or let everything as is?

Thanks,

Fabio
 

  



