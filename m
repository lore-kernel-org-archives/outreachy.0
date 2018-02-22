X-GM-THRID: 6524718047469502464
X-Received: by 10.157.112.19 with SMTP id k19mr1000083otj.117.1519331886588;
        Thu, 22 Feb 2018 12:38:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.18.2 with SMTP id 2ls595618ois.11.gmail; Thu, 22 Feb 2018
 12:38:05 -0800 (PST)
X-Google-Smtp-Source: AH8x227G5+9QM/YkqWjeWKzy5pdwjOgvYdgHljCrUIRuOGwKThcgKweidX8mRENV0R45dXvrYwDl
X-Received: by 10.202.235.79 with SMTP id j76mr3891860oih.113.1519331885659;
        Thu, 22 Feb 2018 12:38:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519331885; cv=none;
        d=google.com; s=arc-20160816;
        b=fEryy3OjhxMrTzAZD5Qy17xfKp0IAM1SXZwuhZ6e6gVHa7xW2hPMZ6ilcZGFWB4pJ4
         cEXB+AeKFkKkOCc36XGp3MImdMWRrRpprYoMd/LW+mzg650xTzGcuCjQqhr9jg02/wck
         mHTFsR9SUntLPNY49mU2qk6XNqFx+HQ3rfYMOYQp/7g0JjKyGztRUqSbims5i9kx6FF4
         jT02546t1BEioLSqYaRH/h7Dibgt68GnevXqVJzJyw6ibVkSj75/qoOIKlhh1p3/wuIA
         uuw+MTofEkJGDgxZHrRe07zUg3A8dxvCvcj/gqwv/yrna2pNqmFieY/WPGhPE3+BQ+Ay
         LIXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=OY9/ZxCco3iKnVGzxMXiZTL1YAodUVWhSzNIHTF8brQ=;
        b=ok5X01XEMygsJSy3EE0O0tolxqx/xrkCSWKTgjcjidFZQ//cpgCWHG4J5tN4DZTKTF
         JmZBftJV68dM1763aEgpWRGnEjdSKG2F63D7o+e9Ih2BsubDlPkRLtAMEcYG1PJmpaSH
         xN4AtM4tTwCigkFWV0dmAvUF00XeU+uYqFmM/zisT4btMi9zWQKFAhnqsymS7DyVQ3nJ
         8LY+ceDeNqd3QV5yWA10zDp8nwjJ2qF5Z/74b6o47rgzH+R8uEmPLvw5PNdlD6QjK+Ig
         VXfngO5pg1reVgkVIujt8ndBnCnZy7Azqqc2u9XKJJLxyzB/oVfxlp+XOiLN6LiNNlq7
         pDbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=hInB/qux;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id y81si55776oia.4.2018.02.22.12.38.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Feb 2018 12:38:04 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=hInB/qux;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x244.google.com with SMTP id v9-v6so1544913plp.12
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Feb 2018 12:38:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OY9/ZxCco3iKnVGzxMXiZTL1YAodUVWhSzNIHTF8brQ=;
        b=hInB/quxNlsgVlpyl7SFGTorwqg+OauzTGctAN2M9rropOOJklWd4xD56PQkuTl+vz
         vCR/9sE8j8M1bD9T/Fd+lXzW6Ee2bRMFr2F+t3r+7DgdrD9Xaf46OpJNnPC2BZI2sl5Y
         g/0z7VTUk37tinYGqCakAlveZ1MrP26EkL8vQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=OY9/ZxCco3iKnVGzxMXiZTL1YAodUVWhSzNIHTF8brQ=;
        b=QrgeMBGrHToVg1oovQaNcQ4vLM9nYcFGI+LBr0qqRuE9gf6+M5RazLzMvYqPhcmudv
         s4wLnbTD7ZlGjRLrcBBRZONkAoMq8qqr8zTRzGmK4S+6X8zFzRrmw57UvmatRJ7rgHzT
         A9f12KrJz8tHAJ6VCM89RZ/+jA1v/tu3goQwsyE2h1ih2jhV/9XZXE0Dam2Cy790FAVD
         VRbC4bNo5Z4t/eGVWo2KnGGZbbakAIZe45YDtZM2xacUPj+RmtAMZm441xO9NfjbGtB+
         F8Sy8K0NG93JBEM/VviiS6/tB7rlvisWRXp31cdH1ihSHR97oe2+NQ4VMyzX/bDiXkUh
         yIcg==
X-Gm-Message-State: APf1xPC8Tua7XVxsEx4VshJ6Elh6cXShqahRgLiIjgohH3xKbw8qUvJ+
	QwmAvYnrkSmEzAix/1jfKVpxZRpy
X-Received: by 2002:a17:902:b58d:: with SMTP id a13-v6mr3201369pls.123.1519331884171;
        Thu, 22 Feb 2018 12:38:04 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from DESKTOP-3NPFG8T.localdomain ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id c185sm1312225pfb.146.2018.02.22.12.38.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Feb 2018 12:38:03 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Cc: nishka.dasgupta_ug18@ashoka.edu.in
Subject: Re: [PATCH] xgif: Fixed Line Splitting Issue
Date: Fri, 23 Feb 2018 02:07:58 +0530
Message-Id: <1519331878-14667-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20180222173740.GA22317@kroah.com>
References: <20180222173740.GA22317@kroah.com>

From: nishka.dasgupta_ug18@ashoka.edu.in

Yes, it was a huge error. I had been composing replies in the git/kernels/staging (a mistake I will not repeat). The reply files must have been added and then committed, even though I removed them before committing. I am sorry about that, and promise to be much more careful in future.

Regards,
Nishka Dasgupta

