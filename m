X-GM-THRID: 6526929159245004800
X-Received: by 10.157.43.162 with SMTP id u31mr8136408ota.51.1519739599944;
        Tue, 27 Feb 2018 05:53:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.231.17 with SMTP id e17ls170905oih.2.gmail; Tue, 27 Feb
 2018 05:53:19 -0800 (PST)
X-Google-Smtp-Source: AG47ELuNU1ONkJTFi4XuDrWZb9CngmawhQxmycA+8kmfdZNXplPQ89XJ14XKWVMFL/eT3+cH7sX8
X-Received: by 10.202.205.6 with SMTP id d6mr7120403oig.9.1519739599148;
        Tue, 27 Feb 2018 05:53:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519739599; cv=none;
        d=google.com; s=arc-20160816;
        b=AHPEibbG0tvppJjQIHXpdij0mMktqVoACU980oI+uMUl8rpEZKA/TTAr9eoiGOdw3j
         MP/IyK4sDpI+VTmbJ3OWpLhboYhXBwB4kQykPLT3kd8SqGUhADIOHe22TWLZAwxDxLWa
         wM5ANRZRhOB9djPxc/8Zdbv3sqJUfFrChjdBWdBYoJsxNZEuYMRfCkMMMCgEBcn3aCkj
         YKT6O70JRUhHyNL/P8jma3wIbpQvFtCAQOzCBfM2qV3t/fVUsx03RKNweKIEs9eHBuX3
         F1CUrqPuZOYfbp9jfIBWVfyA2f/wC459smeqonROpt/LIX/r6dH8kD/VJZZgCWRXJfT8
         btMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=bIgjunl2wt2h5peQuCivXbKlODBbLp5hz+e8lxgFYUE=;
        b=n0ZsePjYSh5CO50dU2Rf+zrWTZK67OGlEfZrUIik24JF8/pYzGPdI61eiIheSC0hLW
         LBAlyMVpdvzGJME/LmWDlUoFlYtAHstLQVWptfYw7NeDrWalk/MQMKn1foEmklODTx8P
         VXNejxEIEcXiapklKGG41cMEsW02tlBUshaTIl3xZUg6CdDvM2Ld6bYOZIf5134syukq
         R5yaFNh1/lHgSdGizsWg7QD4BLEr8au1Tf/+qyjBK6lxRKhbDiMlYNasCMk81SqK94dT
         8sb0Ei6yfXnbT3Rr0ZtQS2LLeoCiq8eN5gUW0388J9kltTlY/I9iuJ/KJj33HixVRA12
         96ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=H0fZXVCD;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22e as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x22e.google.com (mail-pl0-x22e.google.com. [2607:f8b0:400e:c01::22e])
        by gmr-mx.google.com with ESMTPS id g5si798480ote.4.2018.02.27.05.53.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 05:53:19 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22e as permitted sender) client-ip=2607:f8b0:400e:c01::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=H0fZXVCD;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22e as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x22e.google.com with SMTP id v9-v6so9388354plp.12
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 05:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=bIgjunl2wt2h5peQuCivXbKlODBbLp5hz+e8lxgFYUE=;
        b=H0fZXVCDAnxVTf++H5/reJPyxnS6K55MCbYHEVryogEA5wT356KXjUWpWKGythPkU9
         f5HIpeNdZ0uH+ky7Zz8/4m+AkG+FNNzpUuv3xRiDaiR3v1BmGNnpVcz5S5cnPphqRCSa
         nt0DAkKiFOFwn2uXn0Smb5wHJtoWYgsRNfYsM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=bIgjunl2wt2h5peQuCivXbKlODBbLp5hz+e8lxgFYUE=;
        b=rUFyAHat/V37VtQTHZGVBwPOFlpxqbNQzAjcN9QM1wHO/icwh60GJZh9lggcogRo45
         IRwEZ3iiHxD4Zwiv/ZRxqHKqKjEzd7r29liqLq8az93jF+KXX6cdwLEakPCTihBLUNOg
         d3u3VefDZiUiU0AJ2DupWgOYm1eAfeKSIj96yE2dI/D/KVhOfqkiG/aFIPlcJD61FSnp
         vHiqJ5EZZtcgXu9awCtcgd0l+NagGaj3mMp3rSjoMtezW3LMmrzh8fXKFMip3zleD1GN
         O+iLNQjxRR3UIRQyvfrCnN3wNT7jDqaNo1+9qEnAsM6sXW+xh185tjF/KcFG6tX2E+iF
         yxOg==
X-Gm-Message-State: APf1xPCR31Gne6TldgBaJMfVRE4BzoNDWQqWXJ4nzDi7A83elbs2ATdi
	N/QjY34nc5HptWNLtZeGgmoPHKY6
X-Received: by 2002:a17:902:6b:: with SMTP id 98-v6mr7580996pla.403.1519739598381;
        Tue, 27 Feb 2018 05:53:18 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id e5sm9836226pgs.17.2018.02.27.05.53.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Feb 2018 05:53:17 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Subject: Re:
Date: Tue, 27 Feb 2018 19:23:08 +0530
Message-Id: <1519739588-3783-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <alpine.DEB.2.20.1802271437470.18318@hadrien>
References: <alpine.DEB.2.20.1802271437470.18318@hadrien>

Hi,
Weren't the original values already integers because of the "e8" appended?
If this was an unnecessary patch, I will try to do better next time.
Thanking you,
Nishka Dasgupta

