X-GM-THRID: 6340351948666961920
X-Received: by 10.66.190.3 with SMTP id gm3mr1366041pac.81.1476228225734;
        Tue, 11 Oct 2016 16:23:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.182.195 with SMTP id g186ls1002364iof.6.gmail; Tue, 11 Oct
 2016 16:23:41 -0700 (PDT)
X-Received: by 10.107.129.78 with SMTP id c75mr94801iod.17.1476228221448;
        Tue, 11 Oct 2016 16:23:41 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id co10si419888pad.1.2016.10.11.16.23.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 16:23:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id e6so8969877pfk.3
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 16:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pPuk5VZxkn9enbf2Gc/FMmsMT3VOlTJnpCvAno0RuL8=;
        b=wcgiRxLXZGd3I873LRTlukpWx4FGv0OQaETbO/MipgKY4YLwK62NToEipJcI35L9Q2
         c1JgV0op9yWQh35VSXp3Edl18NOwK1Jirtot8uz9SjsTSg7uexEKulfR0DDp1TC0TBx0
         eGzz6pwvmgX1+BREvBKuqVudzMRUlt12kLrHxUrCE7RLUvr8pYHimiuUvZm3DDh7oslK
         lC/YQJrn7d3f1skWZMq1D+8qjOweHtkL35sFL8SXJicq6dVHo8fv8TRTAO8qzWWXpXfL
         QwOUItdLiLfk9468P5AgnsjptuQZyqk1Ln3dqzfiMbLI8hWwV7jSXT7WtfaB7Z9ph9tJ
         K54w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pPuk5VZxkn9enbf2Gc/FMmsMT3VOlTJnpCvAno0RuL8=;
        b=EK8+dcDCATA90IlR2Pwht7BZ4l6r4sPG2UtQswPxVMlomAu4WdcagYQsmorKrdRdHa
         y0cFM9L1IvXaldQnJsb/r/0EN20kGxHL+cEMLWjhgjVrU2/cc0JuqJZxIpSw+WojD6Xb
         kFaMToL7L+ns2RsjK5PBbWZkuvOPFiDmBCaF0uGf9I6VSxQLDpoxPO+T8Tw/K1osWq8S
         39O8oOaupHEq35Eo8Trn2egmng2YluDHYJDQ8waGTD96z1bNIoNChJx+WHoSyrNgpseg
         rY7KV9ldJIr93OXmCs+96WWj/zv4emIqsk1sQuXY4Yy5uwrIkpNVucnsC/gTwoKPf09d
         NTcQ==
X-Gm-Message-State: AA6/9Rmtz3s/Jjw00NmaBa7bwAj9IfL1lCh96UZbUTX+A9w8M98FNcIS0+s9U+FTLT6+vA==
X-Received: by 10.99.149.72 with SMTP id t8mr4843903pgn.29.1476228221264;
        Tue, 11 Oct 2016 16:23:41 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id v73sm6820160pfd.63.2016.10.11.16.23.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 16:23:41 -0700 (PDT)
Date: Tue, 11 Oct 2016 16:23:38 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: julia.lawal@lip6.fr
Cc: outreachy-kernel@googlegroups.com
Subject: Coccinelle Challenge 1
Message-ID: <20161011232338.GA11666@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Hi Julia, 
I worked on the first challenge and I wanted to run my findings and
questions by you. Please confirm whether these observations are correct.

I looked at the difference between local idexpression, expression, and
identifier for ret.cocci. 

Local idexpression basically means what local identifier
would mean-- just local vars--  except that's invalid. 

Using expression in place of local identifier included results like
this: 

- a->b = c;
- return a->b;
+ return c;

I don't know whether or not that's always the right thing to do. I think
that if the changes are only local, it'd be fine to compress the lines.
But if a->b happens to have a global effect than it'd be wrong. I'm not
sure about this, but if the function receives *a as a parameter, then
would a->b = c be a persistent change? 

Using identifier included results where 'ret' was not necessarily local,
so compressing the lines would be bad because the global assignment
would be deleted.

I noticed some potentially bad results with ret.cocci:
1. When the type of 'ret' happens to be important, lines shouldn't be
compressed. For example, a function receives a variable of type u64 but
then returns it as u32. Deleting the assignment line means that the
value will be returned as the wrong type.

2. spatch deletes a comment between the assignment and the return
statement. E.g.:

-       start = iwe(info);
-       /* how to translate rssi to ?% */
-       return start;
+       return iwe(info);
 }

3. readability issues-- 
- the return value is very long with many |'s or ||'s
- the name of the variable might be meaningful to the reader
- there are if blocks with return statements: 
 same variable name but different values might provide meaning/order to
 the program.
In these cases the variable reassignment or creation isn't actually
necessary, but does it increase readability?

Questions:

I'm pretty confused about how these lines work: 

-ret =
+return
     e;
-return ret;

The first line deletes the name of the variable and the equals sign, 
but what happens to the expression on the right?
I'm confused as to why it doesn't say -ret = e to signify that the
expression on the right is what we want 'e' to be. Then return gets
added, and it's replacing 'ret ='. But why is 'e' even necessary if it
wasn't deleted? And why is it on a new line with spaces in front? 
The last line '-return ret;' makes sense, we just want to delete the 
word return followed by the variable name. 

I've read some basics of coccinelle, went through the slides, and read
some articles people wrote about it but I'm still pretty confused. :/

Thanks for your time, 
Elizabeth

