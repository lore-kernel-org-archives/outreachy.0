X-GM-THRID: 6523882080322977792
X-Received: by 10.80.149.230 with SMTP id x35mr4288744eda.3.1519738142274;
        Tue, 27 Feb 2018 05:29:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.170.50 with SMTP id o47ls822499edc.3.gmail; Tue, 27 Feb
 2018 05:29:00 -0800 (PST)
X-Google-Smtp-Source: AH8x224beNtZuU6eeqlZ0aRJybvewM3m2tO1GwWUWXuHd+IgnxGvCHjzP6rAcufAwPkBT197rXT2
X-Received: by 10.80.146.109 with SMTP id j42mr4272398eda.6.1519738140094;
        Tue, 27 Feb 2018 05:29:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519738140; cv=none;
        d=google.com; s=arc-20160816;
        b=lLYZlTTp4jhtWLxgWMPz0eJtCEJMY47nH6W3bRFlDYOSKtKYcVqJjCnUdi08kTUGZ8
         6ZAHHo4F92me0Xb8pFJfjOGeUWLgHL95+TeR9Vvfhpdb1pPE3XB/GPwMAsOOh04SItPI
         q/2lklBcN3NOFvdPKrSU9WEqKbxyQgvB/M1uWPaNd+yTrOoC68XWDR3+D3IX8Hswy1Lr
         a/WMKOUm3jS5TzjQx9Do+WR+X13f6gVtkfK948ozT5JclQivREvOCbchLvMib/Cjtsib
         9B67pL4yUvCStOVPT3kn3zK8OH6064tIyjfS2Qzfbx3YYYH46EGCJ0/AK41tazEeMzHL
         ruAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=XV6Q1iMCjt/j80TMFOWroM2eUh8Z90XeBHct0Zr0k6JmPfGLtfxm3eOiN2/elirW45
         fF0Cyr15wGxxgqc0nh4Jdus7WhSurOvuQ2WLlH1N1PKCDtrmEynqhMtXVSYSjgeIsohi
         XNpCFzDIA0tgC0HnyYqsnnQJr7qrcut9cxp6CbNiPIw1DwRc98VkHizOFhFuxYYVUyCi
         JUbH+jJItrV8ejhnpzRnNqgwG1x++gi29Dw1P/nB4/Mx4VqsfJ/+WsW9ZFfjbv0wvw+g
         Xv02RXSF76UcjHiJ4Xs7uvJAGZqc8bi0woZs0grKvlpuLDiahTtnM53oxuF7s6mod91Y
         WtDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=VnCVVVDk;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id f20si449708edm.5.2018.02.27.05.28.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 05:28:59 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=VnCVVVDk;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-wm0-x22b.google.com with SMTP id w128so18138349wmw.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 05:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=VnCVVVDkvJ3Nzo2vLrfSv+9P9tLtyiRHnnjLZus9nrqBuje9HJOwGJAJ7lfdReZiQI
         0KSxdmbXaZWorV48ckgQ0HY18/pQX1/NZe1MscjPUT/i3/Grq2UKl1FWVIYrwoqO2uf8
         6oFO41CtGDm5zSlKhskEjKVmzrVsluWG4PdQM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=pIpbx22OglRQSZeoSk23IDvFbC0cEgjkU1UHt5veGlIJnyegqbIfjhPsKzX6z+LAUk
         BgnfX/3Iy7mMYD6f1F06GhQgswpyWOgTmb/+mA+cE2YbF7SVZGCGyr9eHHTVKOv6prqt
         dabK942enV5w+Jb+WXZ7LNU+OlgBHXw0ApUtqP7U6tdFjdj02vG1TSkBmK07zgsm8iHp
         7io0S3QJ9FCNIl58pI4tCz1gkM+9IE/FGCcNk2oLiWUe5W8/O7g5lBTJVLtMDP+uA1Ii
         wpFMBKqx5wXZQIpDKb7AXexX4seNedDOHTstB2d3bXbCXSH3g6DjaXdZtRWv+hCP1WRY
         fS8Q==
X-Gm-Message-State: APf1xPCtho3vnHuRf8Heg98wWRMgTzeYvWQidASF+pEGMuPj1la9juOh
	UcgsBbmP18t+c6oM+sbX6+ONkffB
X-Received: by 10.80.134.219 with SMTP id 27mr19454763edu.135.1519738139477;
        Tue, 27 Feb 2018 05:28:59 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id c5sm10635212ede.30.2018.02.27.05.28.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Feb 2018 05:28:58 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Subject: Re: Re: [SETUP] Difficulty with dmesg 
Date: Tue, 27 Feb 2018 18:58:46 +0530
Message-Id: <1519738126-4918-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1519401525.2617.295.camel@decadent.org.uk>
References: <1519401525.2617.295.camel@decadent.org.uk>


