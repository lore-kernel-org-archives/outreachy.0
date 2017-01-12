X-GM-THRID: 6374319834458488832
Date: Thu, 12 Jan 2017 04:37:07 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <306428e8-1204-4b38-804a-e54ce0db03c8@googlegroups.com>
In-Reply-To: <c81ecc02-03b8-4a0a-ad9b-6de06226e5de@googlegroups.com>
References: <c81ecc02-03b8-4a0a-ad9b-6de06226e5de@googlegroups.com>
Subject: Re: COMMAND NOT WORKING
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_473_1286266699.1484224627205"
X-Google-Token: EPPw3cMF3GMWZ5hTuEQ0
X-Google-IP: 14.139.82.6

------=_Part_473_1286266699.1484224627205
Content-Type: multipart/alternative; 
	boundary="----=_Part_474_1001998277.1484224627205"

------=_Part_474_1001998277.1484224627205
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello Arushi,

I have recently faced the same problem and the solution which works for me 
is:-
if you are working under proxy first configure proxy which looks like:

git config --global http.proxy=http://user:passwd@proxy.example.com:8080 <http://user:passwd@proxy.example.com:3128>


and then try this command

git clone -b staging-testing http://
git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git



------=_Part_474_1001998277.1484224627205
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Hello Arushi,<br><br>I have recently faced the same problem and the solution which works for me is:-<br>if you are working under proxy first configure proxy which looks like:<br><br><pre class="bbcodeblock" dir="ltr" style="
		margin: 0px;
		margin-right: -99999px;
		padding: 3px;
		border: 1px inset;
		width: 98%;
		height: 34px;
		text-align: left;
		overflow: auto">git config --global http.proxy=<a class="vglnk" href="http://user:passwd@proxy.example.com:3128" rel="nofollow"><span>http</span><span>://</span><span>user</span><span>:</span><span>passwd</span><span>@</span><span>proxy</span><span>.</span><span>example</span><span>.</span><span>com</span><span>:</span><span>8080</span></a></pre><br>and then try this command<br><br>git clone -b staging-testing http://<a href="http://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git" target="_blank" rel="nofollow">git.kernel.org/pub/scm/<wbr>linux/kernel/git/gregkh/<wbr>staging.git</a><br><br><br></div>
------=_Part_474_1001998277.1484224627205--

------=_Part_473_1286266699.1484224627205--

