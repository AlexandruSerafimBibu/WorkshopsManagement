using System;
using System.Collections.Generic;
using System.Text;

namespace WorkshopsManagement.Models
{
    public class Answer
    {
        public int id { get; set; }
        public string name { get; set; }
        public string username { get; set; }
        public int questionId { get; set; }

        public Answer(int id, string name, string username, int questionId)
        {
            this.id = id;
            this.name = name;
            this.username = username;
            this.questionId = questionId;
        }

        public Answer(string name, string username, int questionId)
        {
            this.name = name;
            this.username = username;
            this.questionId = questionId;
        }

        public Answer() { }

        public override string ToString()
        {
            return name;
        }

    }
}
