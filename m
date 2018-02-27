X-GM-THRID: 6526929159245004800
X-Received: by 2002:a17:902:7844:: with SMTP id e4-v6mr3354562pln.47.1519740488215;
        Tue, 27 Feb 2018 06:08:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.167.11 with SMTP id d11ls293313pgf.14.gmail; Tue, 27 Feb
 2018 06:08:07 -0800 (PST)
X-Google-Smtp-Source: AH8x2278aXheRmQMrtT18jkBO4TUTL/FGoVVQo8FRbPc+7ToWcNZEdK/rFBbilhp8sIhC25OCT+L
X-Received: by 10.98.8.195 with SMTP id 64mr3286125pfi.49.1519740487021;
        Tue, 27 Feb 2018 06:08:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519740486; cv=none;
        d=google.com; s=arc-20160816;
        b=p1C0bAkDyzqFfUUuz2XdKDbW7whICJUz+ImZk8YmxoENqKw3iDE0iTwMT1DVnHAffK
         G9bC9NnsDxjg5RNqOaxcE4u8bgK3BwLXRvCcKOxAv2jIFiUB4XmFdWgEPkVPMcwaSkqQ
         pARY9Bb0P6cr/IWvSxKEhkJDX6gwKZG+GaXI234ygk8NNnHZPWsiLdQvitmj506AtOGj
         iZt9jpMR5WQeGgHWKfTeuyv39IozRwqIBvgQxNAdI6CpBgkVEktbnYhZp6y+qru0OeA6
         osXWYxvpKmqiIrbNVKa1qnOZ1ZK8pJZf9XULDu4gV+aAD2xNJWxFV1CZdtJiqYUlo/So
         yNGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=BgqtT9usinYLt+K+mpYAhWIWHxHdw4taScaiDbDSVOc=;
        b=xua0+MoArMURMrQqscUBeaI49/aQXYAmU5Hr8qRTQYSf/T2EFr+ORSeiOQp3CJ1Xua
         R1SHWiKj+YkK062usL1dFf/kq91LCYVI+yyaLcI1hQJ/R9n2R9BFRQ21p48Wy6tWE8U3
         MknzwMkKWDJoxnPy9NpfPlat/SER0yPO1Y18bmhh6Hk8MCOVVcGQq+vHOcrY0x7e9+v9
         fUkdi+nk2oo0+cXjuTgv/LA71AN0fNe8t/mtFhTg41ApK7dmAI7yDicDqD+pwZMjobYE
         Pqfl4XWLL743mx9qlkdLNO2UT7dwZJ/+PC5bpD5uUjQRdzVxemwKLsZ7Wmcn1wNi3PNG
         AJ0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=YkgbHnHk;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id y22si583151pfe.5.2018.02.27.06.08.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 06:08:06 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=YkgbHnHk;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x230.google.com with SMTP id a16so2150462pfn.9
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 06:08:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=BgqtT9usinYLt+K+mpYAhWIWHxHdw4taScaiDbDSVOc=;
        b=YkgbHnHkcQ2sJ3jamTY/pRdxHcrJPC0diE1IZktfADcOEbhIFRvo1Y08lisx2T3gC5
         TeWPuSpAmQte6EKTgXqzjj/tsVEzy27noYIMLKrr72H9XbefJq8G+IGtF6Gdz/YTy2rE
         0zEawzhbjTibX0xxZ0fE26V5/XSuixI7bCMd8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=BgqtT9usinYLt+K+mpYAhWIWHxHdw4taScaiDbDSVOc=;
        b=QALBdhqMbGkuK2Btung601VVRYPUn7npSqtuWpLtax52Nu8NQpv918Z3hXiWKiHj8E
         uqQiF3cTl84U+Keu4CdYcsH+qz5JHRpOTEIOK0khG6F11t7TJO9IOM3RV5YFQTO+dyqs
         GCU3Z7PdhLbtvAV6XoGy+S7150wJhL11gH1nIKa6Iyy2v+zjs/sK4zBChwcguOxTf0XG
         wVTHAtW2uxZ20QOuzILygmIdkCL2qjw7EOvuzHoepzrn6ZUy0z4jHFNzGAdye0OvS41I
         toYjg7+kq1uV61iKdAEzgXxgyENis2FItaDAle+F5KCLRl4MacbdyDcoOy/9v6CBquh7
         WB5Q==
X-Gm-Message-State: APf1xPBr9f9FFC8FgdDr7eYMNK7Oyvwx30u+w590mv4+wAdbxf0EL+7E
	DVd8Fho9wLTAXPkoW88irFQuiGSJ
X-Received: by 10.99.157.193 with SMTP id i184mr11226167pgd.197.1519740486405;
        Tue, 27 Feb 2018 06:08:06 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id 14sm24409220pfi.132.2018.02.27.06.08.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Feb 2018 06:08:04 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Subject: Re:
Date: Tue, 27 Feb 2018 19:37:54 +0530
Message-Id: <1519740474-3930-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <alpine.DEB.2.20.1802271458340.18318@hadrien>
References: <alpine.DEB.2.20.1802271458340.18318@hadrien>

Hi,
Thank you for the clarification!
Regards,
Nishka Dasgupta

