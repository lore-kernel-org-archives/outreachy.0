X-GM-THRID: 6532867526079021056
X-Received: by 10.55.74.70 with SMTP id x67mr3516509qka.7.1521051751850;
        Wed, 14 Mar 2018 11:22:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.16.131 with SMTP id a3ls1398984qtj.4.gmail; Wed, 14 Mar
 2018 11:22:30 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtfcDD6wUw55HSVN8aAqoO8fqU3YyDWT5CQdRmlTg5+iKzBbGpvrScN6mIcc6jLFfH9IADI
X-Received: by 10.237.38.225 with SMTP id q88mr3695266qtd.5.1521051750926;
        Wed, 14 Mar 2018 11:22:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521051750; cv=none;
        d=google.com; s=arc-20160816;
        b=wBoJ0qFg2FxVrZNH32B3QUhxuwtAk9GkDUW1xBkaYhue/XxOWBaSIUTiFV5VEF0cso
         1XCbl8XdmyT4oh9EeqfGmkPfUIAzcT9CieruS3g/aUah7adXAz/Kcd21Dm0pqUCwLr/k
         cPClgXGNHmVeB8YRqfdkOXV1+03ikdlQUa438Am65OYdK6FPxTpxiWoikTV0EgzjFmJI
         Rt9JX9EitwGz5klPAFhFzQBDQzbDdaKpQkTzZ4RN+PL77+iIXS7O9M2nBUC3R4l5NiSf
         ibxqNUVfHfmuN5QdWpI7IaDeL4gTMfNHt6I32w0FGKmZWkqY+I9ynrr5iF0JYlxa1evq
         08VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=NE8x0+rDCa7RpGcddJ8BpVYqcU+c36mRpNbi86M/rQU=;
        b=J4wePNxxS4OCCCdcwF5jmv7cmANfhS00onb0WT+yz9GH0gmMJudmDWHfHkd1iNtM79
         xocj9H50RYIQ+P/qvDvxA+cnC75YTKCYe6jZ/eX2QwbAndfXjEeia4YvB7icNodtZ+tS
         cv5J/yBaPbQ8I0l5ZMSowC4es4fHKaLqDsgtiQh82z9LVCC/sBhEyI+HAVbJeg806bqG
         PfvHZFmd20tgMA5zuTpSu7EwtfzjhVFOUPn7FekRRCclUq2a6PwfxbOsLmv3oD3vMo0m
         xw4MMjaS/mn/bgTXc95V6YBDmkoEaM0+bYJaGNP/pfGEeRiZz09z7O5YglMJYXrrkXnm
         +VNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=L39rLlgZ;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f40si208112qta.5.2018.03.14.11.22.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Mar 2018 11:22:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=L39rLlgZ;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x242.google.com with SMTP id a16so1761699pfn.9
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Mar 2018 11:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=NE8x0+rDCa7RpGcddJ8BpVYqcU+c36mRpNbi86M/rQU=;
        b=L39rLlgZr3PaOPshe7Hv22/UY8HdSjE3dr5eWzMLyHXaBC5YYqqqbs59z4wVo0eAjz
         yCm/TtLaQlf5VeNEmMu6Xh3k7VCZnLnz1JSxbbXwxxHTsVZoMW8Ws8erLqBFgD8EQiMT
         o5FMjfnwtkEixylRsQIeIC02LS/ABzu/9vVrY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=NE8x0+rDCa7RpGcddJ8BpVYqcU+c36mRpNbi86M/rQU=;
        b=BsZ0PomgGPj2QRdYq6SmYIPxbpL7m58yZBv0xRunZD4EydxQz6mH9EmO/mx46ZD9sO
         /GNtt55LHWQaOVYr6yavuMrB3gA5k7VZ6XO8X9d02BhFwLtJBXjPwgNXVxcQqqPwBZ8I
         GaBB8s3/dbNWmbYl7DEcUCprDpx2oPSpJegAuUn3irsf/uzKCn40ctH1GgMq/6ot8VLn
         nupeQ5qFXHJ9FfQvRNGqaiseTyPL4pDYBRrx0KIJ5aAt0eo2bObmRmkq/omtk0jOkuAO
         yVkKei/Q/4qov6TQtDsbdlVgRYyLhcLOrG4AGaKaVKWI3R34gtvi96OJnZsBc4uLV8O3
         YmCg==
X-Gm-Message-State: AElRT7Ek6X+FpXlJQzXPPyEFbTihj+JPmgwF30hoUP7NmjjPSn4TF5Y7
	dUokjiZVaeUvJ30rMg8PiWSTIQ==
X-Received: by 10.98.172.18 with SMTP id v18mr5128768pfe.175.1521051749657;
        Wed, 14 Mar 2018 11:22:29 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id k66sm6585065pfb.123.2018.03.14.11.22.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Mar 2018 11:22:27 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: speakup: Add blank line after declaration
Date: Wed, 14 Mar 2018 18:22:10 +0000
Message-Id: <1521051730-25736-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Add blank line after declaration. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/speakup/spk_ttyio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
index ade03b0..eac63aa 100644
--- a/drivers/staging/speakup/spk_ttyio.c
+++ b/drivers/staging/speakup/spk_ttyio.c
@@ -226,6 +226,7 @@ static int spk_ttyio_out(struct spk_synth *in_synth, const char ch)
 static int spk_ttyio_out_unicode(struct spk_synth *in_synth, u16 ch)
 {
 	int ret;
+
 	if (ch < 0x80)
 		ret = spk_ttyio_out(in_synth, ch);
 	else if (ch < 0x800) {
-- 
2.7.4


