using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for DAO
/// </summary>
public class DAO
{
    public DAO()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static SqlConnection GetConnection()
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        return con;
    }
    //insert delete update
    public static int IDU(string sql, CommandType cmdType, SqlParameter[] param)
    {
        using (SqlConnection con = DAO.GetConnection())
        {
            using (SqlCommand cmd = con.CreateCommand())
            {

                cmd.CommandText = sql;

                cmd.CommandType = cmdType;

                if (param != null)
                {
                    cmd.Parameters.AddRange(param);
                }

                try
                {

                    return cmd.ExecuteNonQuery();//insert delete update
                }
                catch (Exception ex)
                {
                    throw ex;

                }

            }
        }
    }

    //select
    public static DataTable GetTable(string sql, CommandType cmdType, SqlParameter[] param)
    {

        DataTable dt;
        using (SqlConnection con = DAO.GetConnection())
        {
            using (SqlCommand cmd = con.CreateCommand())
            {

                cmd.CommandText = sql;

                cmd.CommandType = cmdType;

                if (param != null)
                {
                    cmd.Parameters.AddRange(param);
                }

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    dt = new DataTable();
                    da.Fill(dt);
                    return dt;
                }

            }
        }
    }
}